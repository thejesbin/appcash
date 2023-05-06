import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '/core/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/redeem_history/i_redeem_history_repository.dart';
import '../../domain/redeem_history/models/redeem_history.dart';
import '../api_urls.dart';

@LazySingleton(as: IRedeemHistoryRepo)
class RedeemHistoryRepository implements IRedeemHistoryRepo {
  @override
  Future<Either<MainFailure, List<RedeemHistory>>> getRedeemHistory() async {
    try {
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      final sharedprefs = await SharedPreferences.getInstance();
      final userId = sharedprefs.getString('login');

      var formData = FormData.fromMap({'id': userId, 'api': apiKey});

      final Response response =
          await dio.post(redeemHistoryUrl, data: formData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final redeemHistoryList = (response.data['result'] as List).map((e) {
          return RedeemHistory.fromJson(e);
        }).toList();

        return Right(redeemHistoryList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
