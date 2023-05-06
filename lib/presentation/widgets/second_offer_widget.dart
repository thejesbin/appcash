import '../../../core/colors.dart';
import 'package:flutter/material.dart';

import '../offer_details_screen.dart/screen_offer_details.dart';

class SecondOfferWidget extends StatelessWidget {
  final banner;
  final logo;
  final amount;
  final title;
  final subtitle;
  final url;
  final oid;
  final des1;
  final des2;
  final des3;
  final des4;
  SecondOfferWidget({
    Key? key,
    required this.banner,
    required this.logo,
    required this.amount,
    required this.title,
    required this.subtitle,
    required this.url,
    required this.oid,
    required this.des1,
    required this.des2,
    required this.des3,
    required this.des4,
  }) : super(key: key) {}

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            // settings: RouteSettings(arguments: oid),
            builder: (context) {
          return ScreenOfferDetails(
              banner: banner,
              logo: logo,
              amount: amount,
              title: title,
              subtitle: subtitle,
              url: url,
              oid: oid,
              des1: des1,
              des2: des2,
              des3: des3,
              des4: des4);
        }));
      },
      child: Container(
        height: mheight * 0.1,
        width: mwidth * 0.8,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black)),
        child: Row(children: [
          SizedBox(
            width: 15,
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(logo),
            radius: 22,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(
                color: textPrimaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          const Spacer(),
          Text(
            "₹$amount",
            style: const TextStyle(
                color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 15,
          )
        ]),
      ),
    );
  }
}
