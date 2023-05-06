import '/core/colors.dart';
import 'package:flutter/material.dart';

class WithdrawList extends StatelessWidget {
  final image;
  final method;
  final status;
  final amount;
  const WithdrawList(
      {Key? key,
      required this.image,
      required this.method,
      required this.status,
      required this.amount})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mheight = MediaQuery.of(context).size.height;
    var mwidth = MediaQuery.of(context).size.width;
    return Card(
      elevation: 5,
      child: Container(
        height: 70,
        width: mwidth * 0.9,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(image),
              radius: 25,
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Via $method",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 5,
                ),
                status == "Success"
                    ? Text(
                        status,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Colors.green,
                            fontWeight: FontWeight.bold),
                      )
                    : status == "Failed"
                        ? Text(
                            status,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          )
                        : Text(
                            status,
                            style: const TextStyle(
                                fontSize: 14,
                                color: Colors.yellow,
                                fontWeight: FontWeight.bold),
                          ),
              ],
            ),
            const Spacer(),
            Text(
              "₹$amount",
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }
}
