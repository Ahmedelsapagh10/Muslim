import 'package:flutter/material.dart';
import 'package:muslim/constants.dart';
import 'package:share_plus/share_plus.dart';

//////////////////////////////azkar
Widget packetAzkar({
  required String t1,
  required String t2,
  required String count,
}) =>
    Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: m6Color,
            ),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    t1,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: m3Color,
                      fontFamily: 'Tajawal-Regular',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    t2,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      fontSize: 24,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Tajawal-Regular',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(0),
                  child: Stack(
                    alignment: Alignment.center,
                    fit: StackFit.passthrough,
                    children: [
                      Image.asset(
                        'assets/images/frame.png',
                        // width: double.infinity,
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                      Text(
                        count,
                        textAlign: TextAlign.center,
                        textDirection: TextDirection.ltr,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: mColor,
                          fontFamily: 'Amiri-Regular',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));

Widget packetAzkarMain({required String t1, required BuildContext context}) =>
    Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              image: const DecorationImage(
                opacity: 1,
                image: AssetImage(
                  "assets/images/b2.png",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: m4Color, width: 2),
              color: whitColor,
            ),
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                    onPressed: () async {
                      final box = context.findRenderObject() as RenderBox?;
                      await Share.share(
                        t1,
                        subject: 'اللهم اجرني من النار',
                        sharePositionOrigin:
                            box!.localToGlobal(Offset.zero) & box.size,
                      );
                    },
                    icon: const Icon(
                      Icons.share,
                      color: m6Color,
                    )),
                Flexible(
                  child: Container(
                    margin: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 10, left: 8),
                    child: Text(
                      t1,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      maxLines: 15,
                      style: const TextStyle(
                        fontSize: 20,
                        color: m6Color,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Tajawal-Regular',
                      ),
                    ),
                  ),
                ),
              ],
            )));

// ignore: non_constant_identifier_names
Widget IconsOfAllScreen(
    {required BuildContext context,
    required Widget GoTOScreen,
    required String image,
    required String NameOfIcon}) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => GoTOScreen));
    },
    child: Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.blue[100],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.teal,
                    spreadRadius: 0,
                    offset: Offset(1, 4),
                    blurRadius: 5,
                  )
                ],
                border: Border.all(width: 5, color: Colors.white),
                borderRadius: BorderRadius.circular(50)),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 1,
          child: Text(
            NameOfIcon,
            maxLines: 1,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontFamily: 'Tajawal-Regular',
              overflow: TextOverflow.fade,
            ),
          ),
        ),
      ]),
    ),
  );
}

Widget AzkarMo5({
  required String t1,
  required String t2,
  required String count,
}) =>
    Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    blurRadius: 2, color: Colors.black, offset: Offset(2, 2))
              ],
              borderRadius: BorderRadius.circular(12),
              color: m6Color,
            ),
            width: double.infinity,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    t1,
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: m3Color,
                      fontFamily: 'Tajawal-Regular',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(5),
                  child: Text(
                    t2,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                    style: const TextStyle(
                      fontSize: 24,
                      //fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Tajawal-Regular',
                    ),
                  ),
                ),
              ],
            )));
