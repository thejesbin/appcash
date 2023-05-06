import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/constants.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/offers/i_offers_repo.dart';
import '../../domain/offers/models/offers.dart';
import '../api_urls.dart';

@LazySingleton(as: IOffersRepo)
class OffersRepository implements IOffersRepo {
  @override
  Future<Either<MainFailure, List<Offers>>> getOffers() async {
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
      final Response response = await dio.post(allOffersUrl, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        // print(response.data['result']);
        final offersList = (response.data['result'] as List).map((e) {
          return Offers.fromJson(e);
        }).toList();

        return Right(offersList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
