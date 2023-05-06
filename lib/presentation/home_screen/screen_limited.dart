import 'package:flutter/material.dart';

import '../../core/colors.dart';
import '../widgets/offer_widget.dart';

class ScreenLimited extends StatelessWidget {
  const ScreenLimited({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
              onPressed: () {},
              child: const Text(
                "View More",
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
      ],
    );
  }
}
