import '/application/user/user_bloc.dart';
import '/core/colors.dart';

import '/presentation/profile_screen/delete_account/delete_account.dart';
import '/presentation/profile_screen/widgets/profile_card.dart';
import '/presentation/welcome_screen/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenProfile extends StatelessWidget {
  const ScreenProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: BlocBuilder<UserBloc, UserState>(builder: (context, state) {
            return state.user.isEmpty
                ? const Center(
                    child: Text(
                    "Server connection failed Please retry again!",
                    style: TextStyle(color: textPrimaryColor),
                  ))
                : Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: mheight * 0.05,
                        ),
                        const CircleAvatar(
                          radius: 70,
                          backgroundImage: AssetImage('assets/profile.png'),
                          backgroundColor: Colors.transparent,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "${state.user[0].name}",
                          style: const TextStyle(
                            color: textPrimaryColor,
                            fontSize: 23,
                          ),
                        ),
                        SizedBox(
                          height: mheight * 0.1,
                        ),
                        ProfileCardWidget(
                            title: "Mobile Number",
                            value: "${state.user[0].phone}"),
                        const SizedBox(
                          height: 15,
                        ),
                        ProfileCardWidget(
                            title: "Email", value: "${state.user[0].email}"),
                        const SizedBox(
                          height: 15,
                        ),
                        ProfileCardWidget(
                            title: "User Id", value: "${state.user[0].id}"),
                        const SizedBox(
                          height: 15,
                        ),
                        ProfileCardWidget(
                            title: "Balance",
                            value: "₹${state.user[0].balance}"),
                        SizedBox(
                          height: mheight * 0.06,
                        ),
                        // MaterialButton(
                        //   height: 50,
                        //   minWidth: 250,
                        //   onPressed: () {
                        //     Navigator.of(context)
                        //         .push(MaterialPageRoute(builder: (context) {
                        //       return const ScreenDeleteAccount();
                        //     }));
                        //   },
                        //   shape: const RoundedRectangleBorder(
                        //       side: BorderSide(color: Colors.black),
                        //       borderRadius: BorderRadius.only(
                        //           topLeft: Radius.circular(20),
                        //           bottomLeft: Radius.circular(40),
                        //           topRight: Radius.circular(40),
                        //           bottomRight: Radius.circular(20))),
                        //   child: const Text(
                        //     'Delete Account',
                        //     style: TextStyle(
                        //         color: textPrimaryColor,
                        //         fontSize: 20,
                        //         letterSpacing: 1,
                        //         fontWeight: FontWeight.bold),
                        //   ),
                        // ),
                        const SizedBox(
                          height: 15,
                        ),
                        MaterialButton(
                          height: 50,
                          minWidth: 250,
                          onPressed: () async {
                            SharedPreferences sharedprefs =
                                await SharedPreferences.getInstance();
                            await sharedprefs.clear();
                            // ignore: use_build_context_synchronously
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(builder: (context) {
                              return const ScreenWelcome();
                            }), (route) => false);
                          },
                          shape: const RoundedRectangleBorder(
                              side: BorderSide(color: Colors.black),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(40),
                                  topRight: Radius.circular(40),
                                  bottomRight: Radius.circular(20))),
                          child: const Text(
                            'Log Out',
                            style: TextStyle(
                                color: textPrimaryColor,
                                fontSize: 20,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  );
          }),
        ),
      ),
    );
  }
}
