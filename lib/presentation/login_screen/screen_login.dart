// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '/core/colors.dart';
import '/infrastructure/api_urls.dart';
import '/presentation/forgot_screen/screen_forgot.dart';
import '/presentation/main_screen/screen_main.dart';
import '/presentation/widgets/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/constants.dart';

class ScreenLogin extends StatelessWidget {
  ScreenLogin({Key? key}) : super(key: key);
  final _mobilecontroller = TextEditingController();
  final _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/login.png',
                width: mwidth,
                height: mheight * 0.3,
              ),
              Text(
                "Login",
                style: TextStyle(
                  color: textSecondaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: mheight * 0.07,
              ),
              InputWidget(
                  preicon: Icon(
                    Icons.phone_android_outlined,
                    color: Colors.white,
                  ),
                  hint: 'Mobile Number',
                  obscure: false,
                  read: true,
                  keyboard: TextInputType.number,
                  controller: _mobilecontroller),
              SizedBox(
                height: 20,
              ),
              InputWidget(
                  preicon: Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  ),
                  hint: 'Password',
                  obscure: true,
                  read: true,
                  keyboard: TextInputType.text,
                  controller: _passwordcontroller),
              SizedBox(
                height: mheight * 0.1,
              ),
              MaterialButton(
                color: primaryColor,
                height: 50,
                minWidth: 250,
                onPressed: () {
                  checkLogin(context, mwidth, mheight);
                },
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(20))),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: mheight * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) {
                        return ScreenForgot();
                      }));
                    },
                    child: Text(
                      "Forgot Password ? ",
                      style: TextStyle(
                        color: textPrimaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  )
                ],
              )
            ],
          ),
        )),
      ),
    );
  }

  Future<void> checkLogin(context, mheight, mwidth) async {
    final mobile = _mobilecontroller.text;
    final password = _passwordcontroller.text;
    if (mobile.length < 10 || mobile.length > 10 || mobile.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
          content: Row(
            children: const [
              Icon(
                Icons.error_outline,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Mobile Number must have 10 digits",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
    } else if (password.length < 8 || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
          content: Row(
            children: const [
              Icon(
                Icons.error_outline,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Password must have 8 letters",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: primaryColor,
          duration: Duration(seconds: 1),
          content: Row(
            children: const [
              CircularProgressIndicator(
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Verifying Details...",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
      OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
      await OneSignal.shared.setAppId(onesignalAppId);
      var status = await OneSignal.shared.getDeviceState();
      var tokenId = status?.userId;
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      var formData = FormData.fromMap({
        'phone': mobile,
        'password': password,
        'api': apiKey,
        'one': tokenId
      });
      final Response response = await dio.post(loginUrl, data: formData);
      if (response.data['status'] == true) {
        SharedPreferences sharedprefs = await SharedPreferences.getInstance();
        sharedprefs.setString("login", response.data['id']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return ScreenMain();
        }), (route) => false);
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Row(
            children: [
              const Icon(
                Icons.done,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(response.data['msg']),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 1),
        ));
      } else if (response.data['status'] == false) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Row(
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.white,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(response.data['msg']),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 1),
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Row(
            children: const [
              Icon(
                Icons.error_outline,
                color: Colors.white,
              ),
              SizedBox(
                width: 15,
              ),
              Text("Unable To Connect!"),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 1),
        ));
      }
    }
  }
}
