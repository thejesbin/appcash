import '../../../core/colors.dart';
import 'package:flutter/material.dart';

import '../offer_details_screen.dart/screen_offer_details.dart';

class OfferWidget extends StatelessWidget {
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
  OfferWidget({
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
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: Container(
          height: mheight * 0.26,
          width: mwidth * 0.8,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Column(children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover, image: NetworkImage(banner)),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                ),
                Positioned(
                  top: 15,
                  right: 10,
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "₹$amount",
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 26,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(logo),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: textPrimaryColor),
                      ),
                      Text(
                        subtitle,
                        style: const TextStyle(
                            fontSize: 12, color: textSecondaryColor),
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    height: 20,
                    width: 90,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      'View Task',
                      style: TextStyle(
                          color: bgPrimaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
