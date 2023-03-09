import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'AzkarElNoum.dart';
import 'AzkarElSalah.dart';
import 'AzkarElmasa.dart';
import 'AzkarElsabah.dart';
import 'AzkarMo5tara.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            backgroundColor: m3Color,
            appBar: AppBar(
              backgroundColor: m3Color,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: m6Color,
                  )),
              title: const Text(
                'الاذكار',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Tajawal-Regular',
                  fontWeight: FontWeight.bold,
                  color: m6Color,
                ),
              ),
              bottom: const TabBar(
                isScrollable: true,
                indicatorColor: blac2Color,
                labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                tabs: [
                  Tab(
                    child: Text('أذكار الصباح'),
                  ),
                  Tab(
                    child: Text('أذكار المساء'),
                  ),
                  Tab(
                    child: Text('أذكار بعد الصلاه'),
                  ),
                  Tab(
                    child: Text('أذكار النوم'),
                  ),
                  Tab(
                    child: Text('أذكار مختاره'),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: [
                AzkarElsabah(),
                AzkarElmasa(),
                AzkarElSalah(),
                AzkarElnoum(),
                AzkarMo5tara(),
              ],
            )),
      ),
    );
  }
}
