import 'package:flutter/material.dart';

import '../../constants.dart';

Widget pagesShortCut({
  required BuildContext context,
  required Widget page,
  required String image,
  required String name,
}) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ));
    },
    child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: m4Color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset(
                  image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              name,
              style: const TextStyle(
                fontFamily: 'Tajawal-Regular',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ]),
        )),
  );
}
