import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/constants.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/withdraw_methods/i_withdraw_methods_repo.dart';
import '../../domain/withdraw_methods/models/withdraw_methods.dart';
import '../api_urls.dart';

@LazySingleton(as: IWithdrawMethodsRepo)
class WithdrawMethodsRepository implements IWithdrawMethodsRepo {
  @override
  Future<Either<MainFailure, List<WithdrawMethods>>>
      getWithdrawMethods() async {
    try {
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var formData = FormData.fromMap({'api': apiKey});
      final Response response =
          await dio.post(withdrawMethodsUrl, data: formData);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final withdrawMethodsList = (response.data['result'] as List).map((e) {
          return WithdrawMethods.fromJson(e);
        }).toList();

        return Right(withdrawMethodsList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
