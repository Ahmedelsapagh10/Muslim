import 'package:flutter/material.dart';
import 'package:quran/quran.dart' as quran;
import '../../../constants.dart';
import 'Quran_view.dart';
import 'controller/cubit.dart';

Widget Item_widget(BuildContext context, int index) {
  return Container(
    alignment: Alignment.centerRight,
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(
      vertical: 5,
    ),
    width: MediaQuery.of(context).size.width / 1.1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: m4Color,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            quran.getVerseCount(index + 1).toString(),
            style: const TextStyle(
              fontFamily: 'Tajawal-Regular',
              //    fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            arabicName[index]['name'],
            style: const TextStyle(
              fontFamily: 'Tajawal-Regular',
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        Text(
          quran.getJuzNumber(index + 1, 1).toString(),
          style: const TextStyle(
            fontFamily: 'Tajawal-Regular',
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}

////////////////button sava and reset
Widget myButton(
    {required BuildContext context,
    required String buttomName,
    required Function() onTap,
    required String suranName,
    required int suranNum}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.all(8),
        height: MediaQuery.of(context).size.width / 9,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: m6Color,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(blurRadius: 5, color: blac2Color, offset: Offset(1, 2))
            ]),
        child: Text(
          '   $buttomName   ',
          style: const TextStyle(
            fontFamily: 'Tajawal-Regular',
            fontSize: 22,
            color: blac2Color,
            fontWeight: FontWeight.bold,
            //  backgroundColor: mColor,
          ),
        ),
      ),
    ),
  );
}
