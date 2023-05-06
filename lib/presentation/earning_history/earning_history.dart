import '/application/earning_history/earning_history_bloc.dart';
import '/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenEarningHistory extends StatelessWidget {
  const ScreenEarningHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<EarningHistoryBloc>(context)
          .add(const EarningHistoryEvent.getEarningHistory());
    });
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: SingleChildScrollView(
        child: BlocBuilder<EarningHistoryBloc, EarningHistoryState>(
            builder: (context, state) {
          return SafeArea(
            child: state.isLoading
                ? Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: mheight * 0.3,
                        ),
                        const CircularProgressIndicator(
                          color: textPrimaryColor,
                        ),
                      ],
                    ),
                  )
                : state.earningHistory.isEmpty
                    ? Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: mheight * 0.3,
                            ),
                            const Text(
                              "Server connection failed Please retry again!",
                              style: TextStyle(color: textPrimaryColor),
                            )
                          ],
                        ),
                      )
                    : Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 10),
                            SizedBox(
                              width: mwidth * 0.9,
                              child: ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Card(
                                      elevation: 4,
                                      child: Container(
                                        height: 70,
                                        width: mwidth * 0.8,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Row(
                                          children: [
                                            const SizedBox(
                                              width: 8,
                                            ),
                                            CircleAvatar(
                                              radius: 30,
                                              backgroundImage: NetworkImage(
                                                  "${state.earningHistory[index].image}"),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "${state.earningHistory[index].title}",
                                              style: const TextStyle(
                                                color: textPrimaryColor,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const Spacer(),
                                            Container(
                                              alignment: Alignment.center,
                                              height: 60,
                                              width: 60,
                                              decoration: BoxDecoration(
                                                  color: primaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              child: Text(
                                                "₹${state.earningHistory[index].amount}",
                                                style: const TextStyle(
                                                    color: bgPrimaryColor,
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  separatorBuilder: (context, index) {
                                    return const SizedBox(
                                      height: 10,
                                    );
                                  },
                                  itemCount: state.earningHistory.length),
                            )
                          ],
                        ),
                      ),
          );
        }),
      ),
    );
  }
}
