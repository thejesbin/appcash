import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/constants.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/recommend/i_recommend_repo.dart';
import '../../domain/recommend/models/recommend.dart';
import '../api_urls.dart';

@LazySingleton(as: IRecommendRepo)
class RecommendRepository implements IRecommendRepo {
  @override
  Future<Either<MainFailure, List<Recommend>>> getRecommendOffers() async {
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
          await dio.post(recommendOffersUrl, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final recommendList = (response.data['result'] as List).map((e) {
          return Recommend.fromJson(e);
        }).toList();

        return Right(recommendList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
