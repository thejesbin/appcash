import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/colors.dart';
import '../../core/constants.dart';
import '../../infrastructure/api_urls.dart';
import '../widgets/input_widget.dart';

class PromoCode extends StatelessWidget {
  PromoCode({super.key});
  TextEditingController promoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
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
                "Promo Code",
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
                    Icons.code_outlined,
                    color: Colors.white,
                  ),
                  hint: 'Promo Code',
                  obscure: false,
                  read: true,
                  keyboard: TextInputType.text,
                  controller: promoController),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: mheight * 0.11,
              ),
              MaterialButton(
                height: 50,
                minWidth: 250,
                color: primaryColor,
                onPressed: () {
                  var promo = promoController.text;
                  if (promo.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        duration: const Duration(seconds: 2),
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
                              "Please enter promo code",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            )
                          ],
                        ),
                      ),
                    );
                  } else {
                    Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(builder: (context) {
                      return PromoCodeVerification(promo: promo);
                    }));
                  }
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
}

class PromoCodeVerification extends StatefulWidget {
  final promo;
  const PromoCodeVerification({Key? key, required this.promo})
      : super(key: key);

  @override
  State<PromoCodeVerification> createState() => _PromoCodeVerificationState();
}

class _PromoCodeVerificationState extends State<PromoCodeVerification> {
  var textData = "Verifying Your Redeem Request..";
  @override
  void initState() {
    // TODO: implement initState
    redeem(widget.promo, context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Verifying Your Promo Code..",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              SizedBox(
                height: 15,
              ),
              CircularProgressIndicator(
                color: Colors.blue,
              )
            ]),
      ),
    );
  }

  redeem(promo, context) async {
    Dio dio = Dio();
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    final sharedprefs = await SharedPreferences.getInstance();
    final userId = sharedprefs.getString('login');
    var formData =
        FormData.fromMap({'id': userId, 'api': apiKey, 'promo': promo});
    final Response response = await dio.post(promoCodeUrl, data: formData);
    if (response.data['status'] == "true" || response.data['status'] == true) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 2),
          content: Row(
            children: [
              const Icon(
                Icons.done,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                response.data['msg'],
                style: const TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return PromoCode();
      }));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 2),
          content: Row(
            children: [
              const Icon(
                Icons.error_outline,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                response.data['msg'],
                style: const TextStyle(color: Colors.white, fontSize: 15),
              )
            ],
          ),
        ),
      );
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return PromoCode();
      }));
    }
    //else {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       backgroundColor: Colors.red,
    //       duration: const Duration(seconds: 1),
    //       content: Row(
    //         children: const [
    //           Icon(
    //             Icons.error_outline,
    //             color: Colors.white,
    //           ),
    //           SizedBox(
    //             width: 10,
    //           ),
    //           Text(
    //             "Some Error Occured",
    //             style: TextStyle(color: Colors.white, fontSize: 15),
    //           )
    //         ],
    //       ),
    //     ),
    //   );
    //   Navigator.of(context).pushAndRemoveUntil(
    //       MaterialPageRoute(builder: (context) {
    //     return ScreenMain();
    //   }), (route) => false);
    // }
  }
}
