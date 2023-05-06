import 'package:earnsio/domain/dynamic_links/dynamic_links.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

import '/application/settings/settings_bloc.dart';
import '/application/user/user_bloc.dart';
import 'package:flutter/material.dart';
import '/core/colors.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../core/constants.dart';

class ScreenRefer extends StatelessWidget {
  const ScreenRefer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    String? referCode;

    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(child: Center(
          child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
            referCode = state.user[0].refercode;

            return state.user.isEmpty
                ? const Center(
                    child: Text(
                    "Server connection failed Please retry again!",
                    style: TextStyle(color: textPrimaryColor),
                  ))
                : Column(
                    children: [
                      Image.asset(
                        'assets/refer.png',
                        height: mheight * 0.3,
                      ),
                      Card(
                        elevation: 5,
                        child: Container(
                          height: mheight * 0.25,
                          width: mwidth * 0.95,
                          decoration: BoxDecoration(
                            color: bgPrimaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(children: [
                            const SizedBox(
                              height: 10,
                            ),
                            BlocBuilder<SettingsBloc, SettingsState>(
                                builder: (context, state) {
                              return Text(
                                "When Your Friend Completes One Offer You Will Get ₹${state.settings[0].per_refer} And Your Friend Earns ₹${state.settings[0].friends_amount}",
                                style: const TextStyle(
                                    color: textPrimaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              );
                            }),
                            const SizedBox(
                              height: 15,
                            ),
                            InkWell(
                              onTap: () {
                                Clipboard.setData(ClipboardData(
                                    text: state.user[0].refercode));
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    backgroundColor: Colors.green,
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
                                          "Copied to clipboard",
                                          style: TextStyle(
                                              color: textPrimaryColor,
                                              fontSize: 15),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              child: SizedBox(
                                height: mheight * 0.07,
                                width: mwidth * 0.4,
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: mwidth * 0.2,
                                      height: mheight * 0.07,
                                      decoration: const BoxDecoration(
                                          color: textPrimaryColor,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(50),
                                              bottomLeft: Radius.circular(50))),
                                      child: Text(
                                        "${state.user[0].refercode}",
                                        style: const TextStyle(
                                            fontSize: 22,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      width: mwidth * 0.2,
                                      height: mheight * 0.08,
                                      decoration: const BoxDecoration(
                                          color: bgPrimaryColor,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(50),
                                              bottomRight:
                                                  Radius.circular(50))),
                                      child: const Text(
                                        "Copy",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            color: textPrimaryColor),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: mheight * 0.01,
                            ),
                            BlocBuilder<SettingsBloc, SettingsState>(
                                builder: (context, state) {
                              return IconButton(
                                  onPressed: () async {
                                    String generatedDeeplink =
                                        await FirebaseDynamiclinkService
                                            .createDynamicLink(
                                                referCode.toString());

                                    Share.share(
                                        "Download $appName and earn a lot of money. Use My referral code *$referCode* for a joining bonus and more fun.. $generatedDeeplink");
                                  },
                                  icon: const Icon(
                                    Icons.share,
                                    size: 30,
                                    color: textPrimaryColor,
                                  ));
                            })
                          ]),
                        ),
                      ),
                      SizedBox(
                        height: mheight * 0.1,
                      ),
                      Stack(
                        children: [
                          Card(
                            elevation: 5,
                            child: Container(
                              alignment: Alignment.center,
                              width: mwidth * 0.9,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "${state.user[0].pendingearnings}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              alignment: Alignment.center,
                              width: mwidth * 0.4,
                              height: 22,
                              decoration: BoxDecoration(
                                color: textPrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Pending Earnings",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: mheight * 0.02,
                      ),
                      Stack(
                        children: [
                          Card(
                            elevation: 5,
                            child: Container(
                              alignment: Alignment.center,
                              width: mwidth * 0.9,
                              height: 70,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                "${state.user[0].totalrefercount}",
                                style: const TextStyle(
                                  color: textPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            child: Container(
                              alignment: Alignment.center,
                              width: mwidth * 0.4,
                              height: 22,
                              decoration: BoxDecoration(
                                color: textPrimaryColor,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Total Refferals",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  );
          }),
        )),
      ),
    );
  }
}
