import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import '/core/colors.dart';
import '/core/constants.dart';
import '/presentation/main_screen/screen_main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../infrastructure/api_urls.dart';

class RedeemList extends StatelessWidget {
  final image;
  final method;
  final type;
  final id;
  final amount;
  const RedeemList(
      {Key? key,
      required this.image,
      required this.method,
      required this.type,
      required this.amount,
      required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return WithdrawVerification(
            amount: amount,
          );
        }));
      },
      child: Card(
        elevation: 5,
        child: Container(
          height: 70,
          width: mwidth * 0.9,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(image),
                radius: 25,
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Via $method",
                    style: const TextStyle(
                        color: textPrimaryColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    type,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 121, 117, 117),
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const Spacer(),
              Text(
                "₹$amount",
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WithdrawVerification extends StatefulWidget {
  final amount;
  const WithdrawVerification({Key? key, required this.amount})
      : super(key: key);

  @override
  State<WithdrawVerification> createState() => _WithdrawVerificationState();
}

class _WithdrawVerificationState extends State<WithdrawVerification> {
  var textData = "Verifying Your Redeem Request..";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    withdraw(widget.amount, context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Verifying Your Redeem Request..",
                style: TextStyle(color: textPrimaryColor, fontSize: 16),
              ),
              SizedBox(
                height: 15,
              ),
              CircularProgressIndicator(
                color: textPrimaryColor,
              )
            ]),
      ),
    );
  }

  withdraw(amount, context) async {
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
        FormData.fromMap({'id': userId, 'api': apiKey, 'amount': amount});
    final Response response = await dio.post(withdrawUrl, data: formData);
    if (response.data['status'] == true) {
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
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return const ScreenMain();
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
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return const ScreenMain();
      }), (route) => false);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: const Duration(seconds: 1),
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
                "Some Error Occured",
                style: TextStyle(color: textPrimaryColor, fontSize: 15),
              )
            ],
          ),
        ),
      );
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return const ScreenMain();
      }), (route) => false);
    }
  }
}
