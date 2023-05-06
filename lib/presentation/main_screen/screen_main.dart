// ignore_for_file: prefer_const_constructors

import '/core/colors.dart';
import '/presentation/home_screen/screen_home.dart';
import '/presentation/offers_screen/screen_offers.dart';
import '/presentation/profile_screen/screen_profile.dart';
import '/presentation/refer_screen/screen_refer.dart';
import '/presentation/wallet_screen/screen_wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../application/user/user_bloc.dart';

class ScreenMain extends StatefulWidget {
  const ScreenMain({Key? key}) : super(key: key);

  @override
  State<ScreenMain> createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  var _currentIndex = 2;
  final List _pages = [
    ScreenOffers(),
    ScreenRefer(),
    ScreenHome(),
    ScreenWallet(),
    ScreenProfile()
  ];
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<UserBloc>(context).add(const UserEvent.getUser());
    });
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      bottomNavigationBar: SalomonBottomBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: primaryColor,
          onTap: (i) {
            setState(() {
              _currentIndex = i;
            });
          },
          currentIndex: _currentIndex,
          items: [
            SalomonBottomBarItem(
                icon: Icon(Icons.campaign), title: Text("Offers")),
            SalomonBottomBarItem(
                icon: Icon(Icons.people), title: Text("Refer")),
            SalomonBottomBarItem(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
                title: Text("Home")),
            SalomonBottomBarItem(
                icon: Icon(Icons.wallet), title: Text("Wallet")),
            SalomonBottomBarItem(
                icon: Icon(Icons.account_circle), title: Text("Profile"))
          ]),
      body: _pages[_currentIndex],
    );
  }
}
