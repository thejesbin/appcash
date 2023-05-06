import '../wallet_screen/withdraw_loading.dart';

import '/application/redeem_history/redeem_history_bloc.dart';
import '/application/user/user_bloc.dart';
import '/application/withdraw_methods/withdraw_methods_bloc.dart';
import '/core/colors.dart';
import '/presentation/wallet_screen/redeem_list.dart';
import '/presentation/wallet_screen/history_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenWallet extends StatelessWidget {
  const ScreenWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<WithdrawMethodsBloc>(context)
          .add(const WithdrawMethodsEvent.getWithdrawMethods());
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<RedeemHistoryBloc>(context)
          .add(const RedeemHistoryEvent.getRedeemHistory());
    });
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: SafeArea(
        child: Center(
          child: DefaultTabController(
            length: 2,
            child: ListView(
              shrinkWrap: true,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: BlocBuilder<UserBloc, UserState>(
                      builder: (context, state) {
                    return state.user.isEmpty
                        ? const Center(
                            child: Text(
                            "Server connection failed Please retry again!",
                            style: TextStyle(color: textPrimaryColor),
                          ))
                        : Container(
                            height: mheight * 0.25,
                            width: mwidth * 0.9,
                            decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [Colors.green, primaryColor],
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: mheight * 0.06,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "₹${state.user[0].balance}",
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: mheight * 0.04,
                                ),
                                Container(
                                  height: 2,
                                  width: mwidth,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      children: [
                                        const Text(
                                          "Total Rewards",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "₹ ${state.user[0].totalrewards}",
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      children: [
                                        const Text(
                                          "Total Redeem",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "₹${state.user[0].totalredeem}",
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          );
                  }),
                ),
                const SizedBox(
                  height: 45,
                ),
                Column(
                  children: [
                    TabBar(
                        indicatorColor: Colors.grey,
                        indicatorPadding:
                            const EdgeInsets.symmetric(horizontal: 20),
                        indicatorWeight: 5,
                        indicatorSize: TabBarIndicatorSize.tab,
                        tabs: [
                          Tab(
                            child: Container(
                              alignment: Alignment.center,
                              height: 100,
                              width: mwidth * 0.4,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "REDEEM",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              alignment: Alignment.center,
                              height: 100,
                              width: mwidth * 0.4,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Text(
                                "HISTORY",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ]),
                    SingleChildScrollView(
                      child: SizedBox(
                        height: mheight * 0.45,
                        child: TabBarView(
                          children: [
                            BlocBuilder<WithdrawMethodsBloc,
                                    WithdrawMethodsState>(
                                builder: (context, state) {
                              return state.isLoading
                                  ? const LoadingWithdraw()
                                  : state.withdrawMethods.isEmpty
                                      ? const Center(
                                          child: Text(
                                            "Unable to load please try again later",
                                            style: TextStyle(
                                                color: textPrimaryColor),
                                          ),
                                        )
                                      : ListView.separated(
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                RedeemList(
                                                    id: state
                                                        .withdrawMethods[index]
                                                        .id,
                                                    image: state
                                                        .withdrawMethods[index]
                                                        .image,
                                                    method: state
                                                        .withdrawMethods[index]
                                                        .method,
                                                    type: state
                                                        .withdrawMethods[index]
                                                        .type,
                                                    amount: state
                                                        .withdrawMethods[index]
                                                        .amount)
                                              ],
                                            );
                                          },
                                          separatorBuilder: (index, context) {
                                            return const SizedBox();
                                          },
                                          itemCount:
                                              state.withdrawMethods.length);
                            }),
                            BlocBuilder<RedeemHistoryBloc, RedeemHistoryState>(
                                builder: (context, state) {
                              return state.isLoading
                                  ? const LoadingWithdraw()
                                  : state.redeemHistory.isEmpty
                                      ? const Center(
                                          child: Text(
                                            "No History Available",
                                            style: TextStyle(
                                                color: textPrimaryColor),
                                          ),
                                        )
                                      : ListView.separated(
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                WithdrawList(
                                                    image: state
                                                        .redeemHistory[index]
                                                        .image,
                                                    method: state
                                                        .redeemHistory[index]
                                                        .method,
                                                    status: state
                                                        .redeemHistory[index]
                                                        .status,
                                                    amount: state
                                                        .redeemHistory[index]
                                                        .amount)
                                              ],
                                            );
                                          },
                                          separatorBuilder: (index, context) {
                                            return const SizedBox();
                                          },
                                          itemCount:
                                              state.redeemHistory.length);
                            }),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
