import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../domain/core/failures/main_failure.dart';
import '../../domain/user/i_user_repo.dart';
import '../../domain/user/models/user.dart';
import '../api_urls.dart';
import '../../core/constants.dart';

@LazySingleton(as: IUserRepo)
class UserRepository implements IUserRepo {
  @override
  Future<Either<MainFailure, List<User>>> getUser() async {
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
      final Response response = await dio.post(userDetailsUrl, data: formData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final userList = (response.data['result'] as List).map((e) {
          return User.fromJson(e);
        }).toList();

        return Right(userList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (e) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
