import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import '/core/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/core/failures/main_failure.dart';
import '../../domain/earning_history/i_earning_history.dart';
import '../../domain/earning_history/models/earning_history.dart';
import '../api_urls.dart';

@LazySingleton(as: IEarningHistoryRepo)
class EarningHistoryRepository implements IEarningHistoryRepo {
  @override
  Future<Either<MainFailure, List<EarningHistory>>> getEarningHistory() async {
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
          await dio.post(earningHistoryUrl, data: formData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final earningHistoryList = (response.data['result'] as List).map((e) {
          return EarningHistory.fromJson(e);
        }).toList();

        return Right(earningHistoryList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
