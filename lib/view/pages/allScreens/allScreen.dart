import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muslim/view/pages/Azkar/Azkar.dart';
import 'package:muslim/view/pages/Tasabeh/pages/TasabenScreen.dart';
import 'package:muslim/view/pages/home_screen.dart';

import '../../../constants.dart';
import '../../widgets/componemts/components.dart';
import '../Azkar/AzkarElNoum.dart';
import '../Azkar/AzkarElSalah.dart';
import '../Azkar/AzkarElmasa.dart';
import '../Azkar/AzkarElsabah.dart';
import '../Azkar/AzkarMo5tara.dart';
import '../Quran/QuranScreen.dart';
import '../qipla/qiblaScreen.dart';

class AllScreens extends StatefulWidget {
  const AllScreens({Key? key}) : super(key: key);

  @override
  State<AllScreens> createState() => _AllScreensState();
}

class _AllScreensState extends State<AllScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: mColor,
              ))
        ],
        automaticallyImplyLeading: false,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        padding: EdgeInsets.all(5),
        physics: BouncingScrollPhysics(),
        children: [
          IconsOfAllScreen(
              context: context,
              GoTOScreen: QiblaScreen(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'القبله'),
          IconsOfAllScreen(
              context: context,
              GoTOScreen: QuranScreen(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'القران الكريم'),
          IconsOfAllScreen(
              context: context,
              GoTOScreen: TasabehScreen(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'التسابيح'),
          IconsOfAllScreen(
              context: context,
              GoTOScreen: AzkarScreen(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'الاذكار'),
          IconsOfAllScreen(
              context: context,
              GoTOScreen: HomeScreen(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'الله أكبر'),
          IconsOfAllScreen(
              context: context,
              GoTOScreen: HomeScreen(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'سبحان الله'),
          IconsOfAllScreen(
              context: context,
              GoTOScreen: HomeScreen(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'الصلاه علي النبي'),
          //
          IconsOfAllScreen(
              context: context,
              GoTOScreen: AzkarElsabah(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'أذكار الصباح'),

          IconsOfAllScreen(
              context: context,
              GoTOScreen: AzkarElmasa(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'أذكار المساء'),

          IconsOfAllScreen(
              context: context,
              GoTOScreen: AzkarElSalah(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'أذكار الصلاه'),

          IconsOfAllScreen(
              context: context,
              GoTOScreen: AzkarElnoum(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'أذكار النوم'),

          IconsOfAllScreen(
              context: context,
              GoTOScreen: AzkarMo5tara(),
              image: 'assets/images/aZ.png',
              NameOfIcon: 'أذكار مختاره'),
        ],
      ),
    );
  }
}
