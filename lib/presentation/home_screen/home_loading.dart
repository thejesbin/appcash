import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/colors.dart';
import '../offers_screen/screen_offers.dart';

class LoadingHome extends StatelessWidget {
  final loadtitle;
  const LoadingHome({Key? key, required this.loadtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    loadtitle,
                    style: const TextStyle(
                      color: textSecondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
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
              height: mheight * 0.27,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (index, context) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[200]!,
                      highlightColor: Colors.grey[300]!,
                      enabled: true,
                      child: Container(
                        height: mheight * 0.22,
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
                  itemCount: 5),
            ),
          ],
        )
      ],
    );
  }
}
