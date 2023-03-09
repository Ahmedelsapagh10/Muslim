import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim/constants.dart';
import 'package:muslim/view/pages/Azkar/Azkar.dart';
import 'package:muslim/view/pages/Quran/QuranScreen.dart';
import 'package:muslim/view/pages/Tasabeh/pages/TasabenScreen.dart';
import 'package:muslim/view/pages/Tasabeh/pages/detailsT_creen.dart';
import 'package:muslim/view/pages/allScreens/allScreen.dart';
import 'package:muslim/view/pages/qipla/qiblaScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'view/pages/Quran/controller/cubit.dart';
import 'view/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
  WidgetsBinding.instance.addPostFrameCallback((_) async {
    await getFontSize();
    getViewMode();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/201.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: BlocProvider(
        create: (context) => QuranCubit(),
        child: MaterialApp(
          title: 'muslim',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: primaryClr,
            bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: m6Color,
              elevation: 0,
              unselectedItemColor: m3Color,
              selectedItemColor: m3Color,
            ),
            scaffoldBackgroundColor: whitColor,

            ///trans
            appBarTheme: AppBarTheme(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarColor: Colors.white,
                statusBarIconBrightness: Brightness.dark,
              ),
              backgroundColor: m3Color,
              iconTheme: const IconThemeData(color: m6Color),
              titleTextStyle: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.brown[900],
              ),
              shadowColor: Colors.grey,
              centerTitle: true,
              elevation: 0.0,
            ),
            tabBarTheme: const TabBarTheme(
              labelColor: m4Color,
              labelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                // color: Colors.grey,
                overflow: TextOverflow.clip,
                fontFamily: 'Tajawal-Regular',
              ),
              unselectedLabelColor: m6Color,
              unselectedLabelStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                // color: Colors.grey,
                overflow: TextOverflow.clip,
                fontFamily: 'Tajawal-Regular',
              ),
            ),
            textTheme: const TextTheme(
                bodyText1: TextStyle(
              fontSize: 16,
              color: mColor,
              fontWeight: FontWeight.w600,
            )),
          ),
          themeMode: ThemeMode.light,
          initialRoute: 'home',
          routes: {
            'home': (context) => const HomeScreen(),
            'tasabeh': (context) => const TasabehScreen(),
            'qibla': (context) => const QiblaScreen(),
            'quran': (context) => const QuranScreen(),
            'azkar': (context) => const AzkarScreen(),
            'allscreens': (context) => const AllScreens(),
            'Tasbeeh': (context) => const Tscreen(),
          },
        ),
      ),
    );
  }
}
