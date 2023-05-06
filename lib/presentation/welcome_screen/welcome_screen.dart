import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

import '/application/settings/settings_bloc.dart';
import '/core/constants.dart';
import '/presentation/login_screen/screen_login.dart';
import '/presentation/signup_screen/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/colors.dart';

class ScreenWelcome extends StatefulWidget {
  const ScreenWelcome({Key? key}) : super(key: key);

  @override
  State<ScreenWelcome> createState() => _ScreenWelcomeState();
}

class _ScreenWelcomeState extends State<ScreenWelcome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initDynamicLinks();
  }

  Future<void> initDynamicLinks() async {
    final PendingDynamicLinkData? initialLink =
        await FirebaseDynamicLinks.instance.getInitialLink();

    if (initialLink != null) {
      final Uri deepLink = initialLink.link;
      handleLink(deepLink);
    }
  }

  void handleLink(Uri url) {
    List<String> separatedLink = [];
    separatedLink.addAll(url.path.split("/"));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ScreenSignup(referCode: separatedLink[1])));
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
              SizedBox(
                height: mheight * 0.05,
              ),
              const Text(
                "Welcome",
                style: TextStyle(
                    color: textPrimaryColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Tahoma'),
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                appSlogan,
                style: TextStyle(color: textSecondaryColor),
              ),
              SizedBox(
                height: mheight * 0.1,
              ),
              Image.asset(
                "assets/welcome.png",
                width: mwidth,
                height: mheight * 0.4,
              ),
              SizedBox(
                height: mheight * 0.08,
              ),
              MaterialButton(
                height: 50,
                minWidth: 250,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ScreenLogin();
                  }));
                },
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(50)),
                child: const Text(
                  'Login',
                  style: TextStyle(
                      color: textPrimaryColor,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: mheight * 0.03,
              ),
              MaterialButton(
                height: 50,
                minWidth: 250,
                color: primaryColor,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return ScreenSignup(
                      referCode: "",
                    );
                  }));
                },
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(50)),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BlocBuilder<SettingsBloc, SettingsState>(
                      builder: (context, state) {
                    return TextButton(
                      onPressed: () async {
                        final _url =
                            Uri.parse("mailto:${state.settings[0].mail}");
                        if (!await launchUrl(_url,
                            mode: LaunchMode.externalApplication)) {
                          throw "Could not launch $_url";
                        }
                      },
                      child: const Text(
                        'Need Help ?',
                        style: TextStyle(
                            color: textPrimaryColor,
                            fontSize: 14,
                            letterSpacing: 1,
                            fontWeight: FontWeight.bold),
                      ),
                    );
                  }),
                  const SizedBox(
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
}
