import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../core/constants.dart';
import '../../domain/banners/banners.dart';
import '../../domain/banners/i_banners_repo.dart';
import '../../domain/core/failures/main_failure.dart';
import '../api_urls.dart';

@LazySingleton(as: IBannersRepo)
class BannersRepository implements IBannersRepo {
  @override
  Future<Either<MainFailure, List<Banners>>> getBanners() async {
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
      final Response response = await dio.post(bannersUrl, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final limitedList = (response.data['result'] as List).map((e) {
          return Banners.fromJson(e);
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
