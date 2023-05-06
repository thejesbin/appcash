import '/core/colors.dart';
import '/core/constants.dart';
import '/presentation/main_screen/screen_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../application/banners/banners_bloc.dart';
import '../../application/settings/settings_bloc.dart';
import '../welcome_screen/welcome_screen.dart';

class ScreenSplash extends StatelessWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var localVersion = "1";

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SettingsBloc>(context)
          .add(const SettingsEvent.getSettings());
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<BannersBloc>(context)
          .add(const BannersEvent.getBanners());
    });
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
        return state.isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: textPrimaryColor,
                ),
              )
            : state.settings.isEmpty
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Sever Connection Failed",
                          style: TextStyle(
                              color: textSecondaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          width: mwidth * 0.9,
                          child: const Text(
                            "Please check your internet connection or try again later.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: textPrimaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mheight * 0.1,
                        ),
                        MaterialButton(
                          height: 40,
                          minWidth: 100,
                          onPressed: () {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (context) {
                              return const ScreenSplash();
                            }), (route) => false);
                          },
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(color: textPrimaryColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            'Retry',
                            style: TextStyle(
                                color: textPrimaryColor,
                                fontSize: 20,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  )
                : SafeArea(
                    child: localVersion == state.settings[0].update
                        ? Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Update Available",
                                  style: TextStyle(
                                    color: textSecondaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: mheight * 0.1,
                                ),
                                const Icon(
                                  Icons.settings,
                                  color: textPrimaryColor,
                                  size: 80,
                                ),
                                SizedBox(
                                  height: mheight * 0.05,
                                ),
                                MaterialButton(
                                  height: 40,
                                  minWidth: 100,
                                  onPressed: () async {
                                    final url = Uri.parse(
                                        "${state.settings[0].app_url}");
                                    if (!await launchUrl(url,
                                        mode: LaunchMode.externalApplication)) {
                                      throw 'Could Not Launch $url';
                                    }
                                  },
                                  shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: textPrimaryColor),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: const Text(
                                    'Update Now',
                                    style: TextStyle(
                                        color: textPrimaryColor,
                                        fontSize: 20,
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : state.settings[0].maintenance == "on"
                            ? Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      "Under Maintenance",
                                      style: TextStyle(
                                        color: textSecondaryColor,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    const Text(
                                      "$appName app in maintenance please try again later",
                                      style: TextStyle(
                                        color: textPrimaryColor,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: mheight * 0.1,
                                    ),
                                    const Icon(
                                      Icons.settings_accessibility,
                                      color: textPrimaryColor,
                                      size: 80,
                                    ),
                                    SizedBox(
                                      height: mheight * 0.05,
                                    ),
                                  ],
                                ),
                              )
                            : const SplashWidget());
      }),
    );
  }
}

class SplashWidget extends StatefulWidget {
  const SplashWidget({Key? key}) : super(key: key);

  @override
  State<SplashWidget> createState() => _SplashWidgetState();
}

class _SplashWidgetState extends State<SplashWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.jpg',
            height: 200,
          ),
          BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
            return state.settings[0].steycode == "off"
                ? const SizedBox(
                    height: 2,
                  )
                : Column(
                    children: [
                      SizedBox(
                        height: mheight * 0.3,
                      ),
                      const Text(
                        "Developed By",
                        style: TextStyle(
                          color: bgSecondaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "SteyCode",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  );
          }),
        ],
      ))),
    );
  }

  checkLogin(context) async {
    SharedPreferences sharedprefs = await SharedPreferences.getInstance();
    var _login = sharedprefs.getString("login");

    Future.delayed(const Duration(seconds: 2));
    if (_login == null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return const ScreenWelcome();
      }), (route) => false);
    } else {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) {
        return const ScreenMain();
      }), (route) => false);
      
    }
  }
  
}
