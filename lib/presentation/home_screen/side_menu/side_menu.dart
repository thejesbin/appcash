
import '/application/settings/settings_bloc.dart';
import '/application/user/user_bloc.dart';
import '/core/colors.dart';
import '/presentation/main_screen/screen_main.dart';
import '/presentation/offers_screen/screen_offers.dart';
import '/presentation/profile_screen/screen_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../earning_history/earning_history.dart';

import '../../promocode_screen/screen_promocode.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: mheight * 0.06,
          ),
          BlocBuilder<UserBloc, UserState>(builder: (context, state) {
            return Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ScreenProfile()));
                  },
                  child: const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Hi ${state.user[0].name}",
                  style: const TextStyle(
                    color: textPrimaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            );
          }),
          BlocBuilder<SettingsBloc, SettingsState>(builder: (context, state) {
            return Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textPrimaryColor,
                ),
                SizedBox(
                  height: mheight * 0.03,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(builder: (context) {
                      return const ScreenMain();
                    }), (route) => false);
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.home_outlined,
                        size: 40,
                        color: textPrimaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textSecondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return ScreenOffers();
                    }));
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.campaign_outlined,
                        size: 40,
                        color: textPrimaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Offers",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textSecondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    final url = Uri.parse("${state.settings[0].app_url}");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw 'Could Not Launch $url';
                    }
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.web_outlined,
                        size: 40,
                        color: textPrimaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "WebSite",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textSecondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    final url = Uri.parse("mailto:${state.settings[0].mail}");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw 'Could Not Launch $url';
                    }
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.contact_mail_outlined,
                        size: 40,
                        color: textPrimaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Contact",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textSecondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    final url = Uri.parse("${state.settings[0].telegram}");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw 'Could Not Launch $url';
                    }
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/telegram.png'),
                        backgroundColor: Colors.transparent,
                        radius: 20,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Telegram",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textSecondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const ScreenEarningHistory();
                    }));
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.history_outlined,
                        size: 40,
                        color: textPrimaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Earning History",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textSecondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return PromoCode();
                    }));
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.code_outlined,
                        size: 40,
                        color: textPrimaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Promo Code",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textSecondaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () async {
                    final url = Uri.parse("${state.settings[0].privacy}");
                    if (!await launchUrl(url,
                        mode: LaunchMode.externalApplication)) {
                      throw 'Could Not Launch $url';
                    }
                  },
                  child: Row(
                    children: const [
                      SizedBox(
                        width: 15,
                      ),
                      Icon(
                        Icons.privacy_tip_outlined,
                        size: 40,
                        color: textPrimaryColor,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Privacy & Policy",
                        style: TextStyle(
                          color: textPrimaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: textSecondaryColor,
                ),
                //SteyCode
                const SizedBox(
                  height: 10,
                ),
                state.settings[0].steycode == "off"
                    ? const SizedBox(
                        height: 2,
                      )
                    : InkWell(
                        onTap: () async {
                          final url =
                              Uri.parse("${state.settings[0].steycode}");
                          if (!await launchUrl(url,
                              mode: LaunchMode.externalApplication)) {
                            throw 'Could Not Launch $url';
                          }
                        },
                        child: Column(
                          children: [
                            Row(
                              children: const [
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.campaign_outlined,
                                  size: 40,
                                  color: textPrimaryColor,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  "SteyCode",
                                  style: TextStyle(
                                    color: textPrimaryColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Container(
                              height: 2,
                              width: double.infinity,
                              color: textSecondaryColor,
                            ),
                          ],
                        ),
                      )
              ],
            );
          })
        ],
      ),
    );
  }
}
