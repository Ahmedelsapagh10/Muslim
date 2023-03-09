import 'package:flutter/material.dart';
import 'package:muslim/view/pages/Quran/quran_view_widget.dart';
import 'package:muslim/view/pages/Quran/setting.dart';
import 'package:quran/quran.dart' as quran;
import 'package:quran/quran_text.dart';
import 'package:quran/surah_data.dart';
import 'package:share_plus/share_plus.dart';

import '../../../constants.dart';

class QuranView extends StatefulWidget {
  final String suranName;
  final int suranNum;
  const QuranView({
    Key? key,
    required this.suranName,
    required this.suranNum,
  }) : super(key: key);

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  String allSura = '';

  @override
  void initState() {
    for (int i = 0; i < quran.getVerseCount(widget.suranNum); i++) {
      allSura += quran.getVerse(widget.suranNum, i + 1, verseEndSymbol: true);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: m3Color,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: m6Color,
              )),
          actions: [
            IconButton(
                alignment: Alignment.center,
                onPressed: () {
                  setState(() {
                    isView = !isView;
                  });
                },
                icon: Icon(
                  isView ? Icons.view_agenda : Icons.text_snippet_rounded,
                  color: m6Color,
                )),
            IconButton(
                alignment: Alignment.center,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => Setting(
                                suranName: widget.suranName,
                                suranNum: widget.suranNum,
                              ))));
                },
                icon: const Icon(
                  Icons.settings,
                  color: m6Color,
                )),
          ],
          title: Text(
            widget.suranName,
            style: const TextStyle(
              fontFamily: 'Tajawal-Regular',
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: m6Color,
            ),
          ),
          centerTitle: true,
          backgroundColor: m3Color,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              widget.suranNum == 9 || widget.suranNum == 1
                  ? Container()
                  : Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: const Text(
                        '﴿ $Basmala ﴾',
                        style: TextStyle(
                          fontFamily: 'AmiriQuran-Regular',
                          fontSize: 28,
                          color: m6Color,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
              isView
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          decoration: BoxDecoration(
                            color: m6Color,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: ListTile(
                            title: Text(
                              allSura,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontFamily: 'AmiriQuran-Regular',
                                fontSize: quranFontSize,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )),
                    )
                  : Container(
                      margin: const EdgeInsets.all(5),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const ScrollPhysics(),
                        itemCount: quran.getVerseCount(widget.suranNum),
                        itemBuilder: (context, index) {
                          return QuranWidget(
                              aya: quran.getVerse(widget.suranNum, index + 1,
                                  verseEndSymbol: true));
                        },
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
