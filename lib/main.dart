import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';

import 'application/offers/offers_bloc.dart';
import 'presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/banners/banners_bloc.dart';
import 'application/earning_history/earning_history_bloc.dart';
import 'application/limit/limited_bloc.dart';
import 'application/recommend/recommend_bloc.dart';
import 'application/redeem_history/redeem_history_bloc.dart';
import 'application/settings/settings_bloc.dart';
import 'application/special/special_bloc.dart';
import 'application/user/user_bloc.dart';
import 'application/withdraw_methods/withdraw_methods_bloc.dart';
import 'domain/core/di/injectable.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await cofigureInjection();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

// void initDynamicLinks() async {
//   FirebaseDynamicLinks.instance.onLink(
//       onSuccess: (PendingDynamicLinkData dynamicLink) async {
//     final Uri deepLink = dynamicLink?.link;
//     print("deeplink found");
//     if (deepLink != null) {
//       print(deepLink);
//     }
//   }, onError: (OnLinkErrorException e) async {
//     print("deeplink error");
//     print(e.message);
//   });
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getit<OffersBloc>()),
        BlocProvider(create: (context) => getit<LimitedBloc>()),
        BlocProvider(create: (context) => getit<SpecialBloc>()),
        BlocProvider(create: (context) => getit<RecommendBloc>()),
        BlocProvider(create: (context) => getit<BannersBloc>()),
        BlocProvider(create: (context) => getit<UserBloc>()),
        BlocProvider(create: (context) => getit<SettingsBloc>()),
        BlocProvider(create: (context) => getit<WithdrawMethodsBloc>()),
        BlocProvider(create: (context) => getit<RedeemHistoryBloc>()),
        BlocProvider(create: (context) => getit<EarningHistoryBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.grey, useMaterial3: true),
        home: const ScreenSplash(),
      ),
    );
  }
}
