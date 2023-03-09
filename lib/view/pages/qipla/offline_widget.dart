import 'package:flutter/material.dart';
import 'package:muslim/constants.dart';

Widget NoInterNetConnection() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircularProgressIndicator(color: m6Color),
        SizedBox(
          height: 20,
        ),
        Text(
          'قم بالاتصال بالانترنت لحساب موقعك',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        )
      ],
    ),
  );
}
