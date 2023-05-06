import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/constants.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/special/i_special_repo.dart';
import '../../domain/special/models/special.dart';
import '../api_urls.dart';

@LazySingleton(as: ISpecialRepo)
class SpecialRepository implements ISpecialRepo {
  @override
  Future<Either<MainFailure, List<Special>>> getSpecialOffers() async {
    try {
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var formData = FormData.fromMap({
        'api': apiKey,
      });
      final Response response =
          await dio.post(specialOffersUrl, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final specialList = (response.data['result'] as List).map((e) {
          return Special.fromJson(e);
        }).toList();

        return Right(specialList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
