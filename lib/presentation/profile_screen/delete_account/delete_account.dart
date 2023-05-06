import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '/core/colors.dart';
import '/presentation/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/constants.dart';
import '../../../infrastructure/api_urls.dart';

class ScreenDeleteAccount extends StatelessWidget {
  const ScreenDeleteAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: mheight * 0.1,
            ),
            const Text(
              "Are You Sure ?",
              style: TextStyle(
                color: textPrimaryColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'By deleting your account we can not able to recover your account and details, we will erase your details from our database and the complaints placed by you will be closed. By clicking "YES" you are accepting to these conditions.',
              style: TextStyle(color: textSecondaryColor),
            ),
            SizedBox(
              height: mheight * 0.1,
            ),
            const Icon(
              Icons.sentiment_very_dissatisfied,
              color: textPrimaryColor,
              size: 250,
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  height: 50,
                  minWidth: 100,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: textPrimaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'NO',
                    style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                MaterialButton(
                  height: 50,
                  minWidth: 100,
                  color: Colors.red,
                  onPressed: () {
                    deleteAccount(context);
                  },
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(color: textPrimaryColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    'YES',
                    style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: 20,
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }

  deleteAccount(context) async {
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
    final Response response = await dio.post(deleteAccountUrl, data: formData);
    if (response.data['status'] == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 2),
          content: Row(
            children: [
              const Icon(
                Icons.done,
                color: textPrimaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                response.data['msg'],
                style: const TextStyle(color: textPrimaryColor, fontSize: 15),
              )
            ],
          ),
        ),
      );
      await sharedprefs.clear();
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return const ScreenWelcome();
      }), (route) => false);
    } else if (response.data['status'] == false) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 2),
          content: Row(
            children: [
              const Icon(
                Icons.error_outline,
                color: textPrimaryColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                response.data['msg'],
                style: const TextStyle(color: textPrimaryColor, fontSize: 15),
              )
            ],
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 1),
          content: Row(
            children: const [
              Icon(
                Icons.error_outline,
                color: textPrimaryColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Some Error Occured",
                style: TextStyle(color: textPrimaryColor, fontSize: 15),
              )
            ],
          ),
        ),
      );
    }
  }
}
