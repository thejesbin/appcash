import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/constants.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/settings/i_settings_repo.dart';
import '../../domain/settings/models/settings.dart';
import '../api_urls.dart';

@LazySingleton(as: ISettingsRepo)
class SettingsRepository implements ISettingsRepo {
  @override
  Future<Either<MainFailure, List<Settings>>> getSettings() async {
    try {
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var formData = FormData.fromMap({'api': apiKey});
      final Response response = await dio.post(settingsUrl, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final settingsList = (response.data['result'] as List).map((e) {
          return Settings.fromJson(e);
        }).toList();

        return Right(settingsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
