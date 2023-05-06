// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '/core/colors.dart';
import '/core/constants.dart';
import '/presentation/widgets/input_widget.dart';
import 'package:flutter/material.dart';

import '../../infrastructure/api_urls.dart';
import '../login_screen/screen_login.dart';

class ScreenSignup extends StatefulWidget {
  final String referCode;
  ScreenSignup({Key? key, required this.referCode}) : super(key: key);

  @override
  State<ScreenSignup> createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {
  final _mobilecontroller = TextEditingController();

  final _passwordcontroller = TextEditingController();

  final _namecontroller = TextEditingController();

  final _emailcontroller = TextEditingController();

  final _refercontroller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (widget.referCode != null) {
      setState(() {
        _refercontroller.text = widget.referCode;
      });
    }
  }

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
                "Sign Up",
                style: TextStyle(
                  color: textSecondaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: mheight * 0.05,
              ),
              InputWidget(
                  preicon: Icon(
                    Icons.account_circle_outlined,
                    color: Colors.white,
                  ),
                  hint: 'Full Name',
                  obscure: false,
                  read: true,
                  keyboard: TextInputType.text,
                  controller: _namecontroller),
              SizedBox(
                height: 20,
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
                height: 20,
              ),
              Container(
                height: mheight * 0.07,
                width: mwidth * 0.8,
                decoration: const BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(10))),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  controller: _refercontroller,
                  keyboardType: TextInputType.number,
                  cursorColor: bgPrimaryColor,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.face_outlined,
                        color: Colors.white,
                      ),
                      hintText: 'Refer Code',
                      hintStyle: const TextStyle(color: Colors.white),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide.none)),
                ),
              ),
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
                height: mheight * 0.06,
              ),
              MaterialButton(
                color: primaryColor,
                height: 50,
                minWidth: 250,
                onPressed: () {
                  sendOtp(context);
                },
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(20))),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: mheight * 0.05,
              ),
            ],
          ),
        )),
      ),
    );
  }

  sendOtp(context) async {
    final name = _namecontroller.text;
    final password = _passwordcontroller.text;
    final mobile = _mobilecontroller.text;
    final email = _emailcontroller.text;
    String refer = _refercontroller.text;
    if (name.length < 4 || name.isEmpty) {
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
                "Name must have 4 letters",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
    } else if (mobile.length < 10 || mobile.length > 10 || mobile.isEmpty) {
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
    } else if (email.isEmpty || !email.contains("@")) {
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
                "Invalid Email Address",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
    }  else if (password.isEmpty || password.length < 8) {
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
      if (refer.isEmpty) {
     
      refer="1001";
    }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: primaryColor,
          duration: Duration(seconds: 2),
          content: Row(
            children: const [
              CircularProgressIndicator(
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Verifying and Sending Otp",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };
      var rng = Random();
      var otp = rng.nextInt(900000) + 100000;

      var formData = FormData.fromMap(
          {'email': email, 'phone': mobile, 'otp': otp, 'api': apiKey});
      final Response response = await dio.post(checkSignUpUrl, data: formData);
      if (response.data['status'] == true) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Row(
            children: [
              const Icon(Icons.done),
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
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return VerifyOtp(
              name: name,
              email: email,
              phone: mobile,
              refer: refer,
              password: password,
              otp: otp);
        }));
      } else if (response.data['status'] == false) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Row(
            children: [
              const Icon(Icons.done),
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

class VerifyOtp extends StatefulWidget {
  final String name;
  final String email;
  final String phone;
  final String refer;
  final String password;
  final int otp;
  const VerifyOtp(
      {Key? key,
      required this.name,
      required this.email,
      required this.phone,
      required this.refer,
      required this.password,
      required this.otp})
      : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  bool resendButtonVisibility = false;
  bool counterVisibility = true;
  final _otpController = TextEditingController();
  int seconds = 60;
  Timer? timer;
  @override
  void initState() {
    initialTimer();
    super.initState();
  }

  void initialTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (seconds > 0) {
        setState(() {
          resendButtonVisibility = false;
          counterVisibility = true;
          seconds--;
        });
      } else {
        timer?.cancel();
        setState(() {
          resendButtonVisibility = true;
          counterVisibility = false;
          seconds = 60;
        });
      }
    });
  }

  void startTimer() async {
    timer = Timer.periodic(const Duration(seconds: 1), (_) async {
      if (seconds > 0) {
        setState(() {
          resendButtonVisibility = false;
          counterVisibility = true;
          seconds--;
        });
      } else {
        timer?.cancel();
        setState(() {
          resendButtonVisibility = true;
          counterVisibility = false;
          seconds = 60;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            Image.asset(
              'assets/login.png',
              width: double.infinity,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "An otp has been send to ${widget.email}",
              style: const TextStyle(
                  fontSize: 14,
                  color: textPrimaryColor,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 35,
            ),
            InputWidget(
                preicon: Icon(
                  Icons.numbers,
                  color: Colors.white,
                ),
                hint: "Enter Otp",
                obscure: false,
                keyboard: TextInputType.number,
                controller: _otpController,
                read: false),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Visibility(
                visible: resendButtonVisibility,
                child: TextButton(
                    clipBehavior: Clip.none,
                    onPressed: () {
                      resendOtp(context);
                    },
                    child: const Text(
                      "Resend Otp",
                      style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )),
              ),
              Visibility(
                visible: counterVisibility,
                child: Text(
                  "$seconds",
                  style: const TextStyle(
                      color: textPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                width: 30,
              )
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            MaterialButton(
              color: primaryColor,
              height: 50,
              minWidth: 250,
              onPressed: () {
                signIn(context);
              },
              shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomRight: Radius.circular(20))),
              child: const Text(
                'Verify',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )),
      ),
    );
  }

  signIn(context) async {
    var input = _otpController.text;
    var otp = widget.otp.toString();
    if (input.isEmpty || input.length < 6 || input.length > 6) {
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
                "Invalid Otp",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
    } else if (input == otp) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          duration: Duration(seconds: 1),
          content: Row(
            children: const [
              Icon(
                Icons.done,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Otp Verified",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );

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
                "Creating Account",
                style: TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
      Dio dio = Dio();
      (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
          (HttpClient client) {
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => true;
        return client;
      };

      var formData = FormData.fromMap({
        'email': widget.email,
        'phone': widget.phone,
        'name': widget.name,
        'refer': widget.refer,
        'password': widget.password,
        'api': apiKey
      });
      final Response response = await dio.post(signUpUrl, data: formData);
      if (response.data['status'] == true) {
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
          duration: const Duration(seconds: 1),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
        ));
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return ScreenLogin();
        }));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            duration: Duration(seconds: 1),
            content: Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  response.data['msg'],
                  style: TextStyle(color: Colors.white, fontSize: 15),
                )
              ],
            ),
          ),
        );
      }
    } else {
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
                "Invalid Otp",
                style: TextStyle(color: textPrimaryColor, fontSize: 15),
              )
            ],
          ),
        ),
      );
    }
  }

  resendOtp(context) async {
    Dio dio = Dio();
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };

    var formData = FormData.fromMap({
      'email': widget.email,
      'phone': widget.phone,
      'otp': widget.otp,
      'api': apiKey
    });
    final Response response = await dio.post(checkSignUpUrl, data: formData);
    if (response.data['status'] == true) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Row(
          children: [
            const Icon(Icons.done),
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
      startTimer();
    } else if (response.data['status'] == false) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Row(
          children: [
            const Icon(Icons.done),
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
