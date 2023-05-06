// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '/core/colors.dart';
import '/presentation/login_screen/screen_login.dart';
import '/presentation/widgets/input_widget.dart';
import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../../infrastructure/api_urls.dart';

class ScreenForgot extends StatelessWidget {
  ScreenForgot({Key? key}) : super(key: key);
  final _mobilecontroller = TextEditingController();
  final _emailcontroller = TextEditingController();
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
                'assets/forgot.png',
                width: mwidth,
                height: mheight * 0.3,
              ),
              Text(
                "Forgot Password ?",
                style: TextStyle(
                  color: textSecondaryColor,
                  fontSize: 20,
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
                    Icons.email_outlined,
                    color: Colors.white,
                  ),
                  hint: 'Email',
                  obscure: false,
                  read: true,
                  keyboard: TextInputType.text,
                  controller: _emailcontroller),
              SizedBox(
                height: mheight * 0.11,
              ),
              MaterialButton(
                height: 50,
                minWidth: 250,
                color: primaryColor,
                onPressed: () {
                  forgotPassword(context);
                },
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(20))),
                child: const Text(
                  'Submit',
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
            ],
          ),
        )),
      ),
    );
  }

  forgotPassword(context) async {
    var mobile = _mobilecontroller.text;
    var email = _emailcontroller.text;
    if (mobile.length < 10 || mobile.length > 10 || mobile.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
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
                "Mobile Number must have 10 digits",
                style: TextStyle(color: textPrimaryColor, fontSize: 15),
              )
            ],
          ),
        ),
      );
    } else if (email.isEmpty || !email.contains("@")) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 1),
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
                "Invalid Email Address",
                style: TextStyle(color: textPrimaryColor, fontSize: 15),
              )
            ],
          ),
        ),
      );
    } else {
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      var formData =
          FormData.fromMap({'phone': mobile, 'api': apiKey, 'email': email});
      final Response response = await dio.post(forgotUrl, data: formData);
      if (response.data['status'] == true) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Row(
            children: [
              const Icon(
                Icons.done,
                color: textPrimaryColor,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(response.data['msg']),
            ],
          ),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 2),
        ));
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return ScreenLogin();
        }));
      } else if (response.data['status'] == false) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Row(
            children: [
              const Icon(
                Icons.done,
                color: textPrimaryColor,
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
              Icon(Icons.done),
              SizedBox(
                width: 15,
              ),
              Text("Unable to connect!"),
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
