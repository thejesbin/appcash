import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

import 'package:dartz/dartz.dart';

import 'package:injectable/injectable.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/limited/i_limited_repo.dart';
import '../../domain/limited/limited.dart';
import '../api_urls.dart';

@LazySingleton(as: ILimitedRepo)
class LimitedRepository implements ILimitedRepo {
  @override
  Future<Either<MainFailure, List<Limited>>> getLimitedOffers() async {
    try {
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      SharedPreferences sharedprefs = await SharedPreferences.getInstance();
      var userid = sharedprefs.getString("login");

      var status = await OneSignal.shared.getDeviceState();
      var tokenId = status?.userId;

      var formData =
          FormData.fromMap({'api': apiKey, 'one': tokenId, 'uid': userid});
      final Response response =
          await dio.post(limitedOffersUrl, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final limitedList = (response.data['result'] as List).map((e) {
          return Limited.fromJson(e);
        }).toList();

        return Right(limitedList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
