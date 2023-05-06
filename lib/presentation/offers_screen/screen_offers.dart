import '../offers_screen/offers_loading.dart';
import '../widgets/second_offer_widget.dart';
import '/core/colors.dart';
import '/presentation/widgets/offer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/offers/offers_bloc.dart';

class ScreenOffers extends StatelessWidget {
  const ScreenOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mwidth = MediaQuery.of(context).size.width;
    var mheight = MediaQuery.of(context).size.height;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<OffersBloc>(context).add(const OffersEvent.getOffers());
    });
    return Scaffold(
      backgroundColor: bgPrimaryColor,
      body: SafeArea(
          child: BlocBuilder<OffersBloc, OffersState>(
        builder: (context, state) => state.isLoading
            ? Center(
              child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    LoadingOffers(),
                  ],
                ),
            )
            : state.offers.isEmpty
                ? const Center(
                    child: Text(
                      "Server connection failed Please retry again!",
                      style: TextStyle(color: textPrimaryColor),
                    ),
                  )
                : ListView(
                    shrinkWrap: true,
                    children: [
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: SecondOfferWidget(
                            oid: state.offers[index].id,
                            banner: state.offers[index].banner,
                            logo: state.offers[index].logo,
                            amount: state.offers[index].amount,
                            title: state.offers[index].title,
                            subtitle: state.offers[index].subtitle,
                            url: state.offers[index].url,
                            des1: state.offers[index].des1,
                            des2: state.offers[index].des2,
                            des3: state.offers[index].des3,
                            des4: state.offers[index].des4,
                          ),
                        ),
                        itemCount: state.offers.length,
                      ),
                    ],
                  ),
      )),
    );
  }
}
