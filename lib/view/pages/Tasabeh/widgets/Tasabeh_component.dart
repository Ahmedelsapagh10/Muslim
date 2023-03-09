import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:muslim/constants.dart';

Widget TItem(
    {required String image,
    required Function() onTap,
    required String name,
    required BuildContext context}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.all(10),
      height: MediaQuery.of(context).orientation == Orientation.landscape
          ? MediaQuery.of(context).size.width / 4
          : MediaQuery.of(context).size.width / 3,
      width: MediaQuery.of(context).orientation == Orientation.landscape
          ? MediaQuery.of(context).size.width / 4
          : MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: m4Color),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 8,
            child: Image.asset(
              image,
              width: MediaQuery.of(context).orientation == Orientation.landscape
                  ? MediaQuery.of(context).size.width / 6
                  : MediaQuery.of(context).size.width / 5,
            ),
          ),
          Positioned(
            bottom: 8,
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 18,
                color: mColor,
                fontFamily: 'Tajawal-Regular',
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
