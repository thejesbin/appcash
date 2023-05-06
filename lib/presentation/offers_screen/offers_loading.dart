import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/colors.dart';
import '../offers_screen/screen_offers.dart';

class LoadingOffers extends StatelessWidget {
  const LoadingOffers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: mwidth * 0.9,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (index, context) {
            return Shimmer.fromColors(
              baseColor: Colors.grey.shade100,
              highlightColor: Colors.grey.shade200,
              enabled: true,
              child: Container(
                height: mheight * 0.1,
                width: mwidth * 0.75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
              ),
            );
          },
          separatorBuilder: (index, context) {
            return const SizedBox(
              height: 10,
              width: 10,
            );
          },
          itemCount: 7),
    );
  }
}
