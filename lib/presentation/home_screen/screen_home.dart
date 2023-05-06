import 'package:carousel_slider/carousel_slider.dart';
import '../home_screen/home_loading.dart';
import '../widgets/second_offer_widget.dart';
import '/application/banners/banners_bloc.dart';
import '/application/limit/limited_bloc.dart';
import '/core/colors.dart';
import '/core/constants.dart';
import '/presentation/offers_screen/screen_offers.dart';
import '/presentation/widgets/offer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../application/recommend/recommend_bloc.dart';
import '../../application/special/special_bloc.dart';
import 'side_menu/side_menu.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<LimitedBloc>(context)
          .add(const LimitedEvent.getLimitedOffers());
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<SpecialBloc>(context)
          .add(const SpecialEvent.getSpecialOffers());
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<RecommendBloc>(context)
          .add(const RecommendEvent.getRecommendOffers());
    });
    var mheight = MediaQuery.of(context).size.height;

    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        elevation: 5,
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
        title: const Text(
          appName,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      backgroundColor: bgPrimaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 8,
                ),
                BlocBuilder<BannersBloc, BannersState>(
                  builder: (context, state) {
                    return state.isLoading
                        ? const SizedBox()
                        : state.banners.isEmpty
                            ? const SizedBox()
                            : CarouselSlider.builder(
                                itemCount: state.banners.length,
                                itemBuilder: (BuildContext context, int index,
                                    int pageViewIndex) {
                                  return InkWell(
                                    onTap: () async {
                                      var _url = Uri.parse(
                                          "${state.banners[index].url}");
                                      if (!await launchUrl(_url,
                                          mode:
                                              LaunchMode.externalApplication)) {
                                        throw "Could not launch $_url";
                                      }
                                    },
                                    child: Card(
                                      elevation: 5,
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: Colors.white,
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "${state.banners[index].image}"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                  );
                                },
                                options: CarouselOptions(
                                  autoPlay: true,
                                  autoPlayInterval: const Duration(seconds: 2),
                                  aspectRatio: 2.5,
                                  enlargeCenterPage: true,
                                  scrollDirection: Axis.horizontal,
                                ));
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                //Limited Time Offers
                BlocBuilder<LimitedBloc, LimitedState>(
                    builder: (context, state) {
                  return state.isLoading
                      ? const LoadingHome(loadtitle: "Limited Time Offers")
                      : state.limited.isEmpty
                          ? const Center(
                              child: SizedBox(
                              height: 1,
                            ))
                          : Column(
                              children: [
                                SizedBox(
                                  height: 220,
                                    child: ListView.separated(
                                      shrinkWrap: true,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: SecondOfferWidget(
                                                banner: state
                                                    .limited[index].banner,
                                                logo:
                                                    state.limited[index].logo,
                                                amount: state
                                                    .limited[index].amount,
                                                title: state
                                                    .limited[index].title,
                                                subtitle: state
                                                    .limited[index].subtitle,
                                                url: state.limited[index].url,
                                                oid: state.limited[index].id,
                                                des1:
                                                    state.limited[index].des1,
                                                des2:
                                                    state.limited[index].des2,
                                                des3:
                                                    state.limited[index].des3,
                                                des4: state
                                                    .limited[index].des4),
                                          );
                                        },
                                        separatorBuilder: (context, i) =>
                                            SizedBox(
                                              height: 2,
                                            ),
                                        itemCount: state.limited.length>2?2:state.limited.length)),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Limited Time Offers",
                                        style: TextStyle(
                                          color: textSecondaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return ScreenOffers();
                                        }));
                                      },
                                      child: const Text(
                                        "View More",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: mheight * 0.272,
                                  child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return OfferWidget(
                                          oid: state.limited[index].id,
                                          banner: state.limited[index].banner,
                                          logo: state.limited[index].logo,
                                          amount: state.limited[index].amount,
                                          title: state.limited[index].title,
                                          subtitle:
                                              state.limited[index].subtitle,
                                          url: state.limited[index].url,
                                          des1: state.limited[index].des1,
                                          des2: state.limited[index].des2,
                                          des3: state.limited[index].des3,
                                          des4: state.limited[index].des4,
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(
                                            height: 5,
                                            width: 5,
                                          ),
                                      itemCount: state.limited.length),
                                )
                              ],
                            );
                }),
                const SizedBox(
                  height: 15,
                ),
                //Special Offers
                BlocBuilder<SpecialBloc, SpecialState>(
                    builder: (context, state) => state.isLoading
                        ? const LoadingHome(loadtitle: "Special Offers")
                        : state.special.isEmpty
                            ? const SizedBox()
                            : Column(
                                children: [
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Expanded(
                                        child: Text(
                                          "Special Offers",
                                          style: TextStyle(
                                            color: textSecondaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) {
                                            return ScreenOffers();
                                          }));
                                        },
                                        child: const Text(
                                          "View More",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: mheight * 0.272,
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) {
                                          return OfferWidget(
                                            oid: state.special[index].id,
                                            banner: state.special[index].banner,
                                            logo: state.special[index].logo,
                                            amount: state.special[index].amount,
                                            title: state.special[index].title,
                                            subtitle:
                                                state.special[index].subtitle,
                                            url: state.special[index].url,
                                            des1: state.special[index].des1,
                                            des2: state.special[index].des2,
                                            des3: state.special[index].des3,
                                            des4: state.special[index].des4,
                                          );
                                        },
                                        separatorBuilder: (context, index) =>
                                            const SizedBox(
                                              height: 5,
                                              width: 5,
                                            ),
                                        itemCount: state.special.length),
                                  )
                                ],
                              )),
                const SizedBox(
                  height: 15,
                ),
                //Recommend Offers
                BlocBuilder<RecommendBloc, RecommendState>(
                    builder: (context, state) {
                  return state.isLoading
                      ? const LoadingHome(
                          loadtitle: "Recommend Offers",
                        )
                      : state.recommend.isEmpty
                          ? const SizedBox()
                          : Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Expanded(
                                      child: Text(
                                        "Recommended Offers",
                                        style: TextStyle(
                                          color: textSecondaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return ScreenOffers();
                                        }));
                                      },
                                      child: const Text(
                                        "View More",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: mheight * 0.272,
                                    child: ListView.separated(
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder: (context, index) {
                                        return OfferWidget(
                                          oid: state.recommend[index].id,
                                          banner: state.recommend[index].banner,
                                          logo: state.recommend[index].logo,
                                          amount: state.recommend[index].amount,
                                          title: state.recommend[index].title,
                                          subtitle:
                                              state.recommend[index].subtitle,
                                          url: state.recommend[index].url,
                                          des1: state.recommend[index].des1,
                                          des2: state.recommend[index].des2,
                                          des3: state.recommend[index].des3,
                                          des4: state.recommend[index].des4,
                                        );
                                      },
                                      separatorBuilder: (context, index) =>
                                          const SizedBox(
                                        height: 5,
                                        width: 5,
                                      ),
                                      itemCount: state.recommend.length,
                                    ))
                              ],
                            );
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
