import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LoadingWithdraw extends StatelessWidget {
  const LoadingWithdraw({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: mwidth * 0.8,
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemBuilder: (index, context) {
            return Shimmer.fromColors(
              baseColor: Colors.grey[200]!,
              highlightColor: Colors.grey[300]!,
              enabled: true,
              child: Container(
                height: 80,
                width: mwidth * 0.8,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
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
    );
  }
}
