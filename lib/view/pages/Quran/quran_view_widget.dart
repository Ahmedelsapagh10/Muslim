import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../constants.dart';

class QuranWidget extends StatefulWidget {
  final String aya;
  const QuranWidget({super.key, required this.aya});

  @override
  State<QuranWidget> createState() => _QuranWidgetState();
}

class _QuranWidgetState extends State<QuranWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: m6Color,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 5,
      ),
      padding: const EdgeInsets.all(5),
      child: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 10,
              child: Text(
                widget.aya,
                //  quran.getVerse(widget.suranNum, index + 1, verseEndSymbol: true),
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontFamily: 'AmiriQuran-Regular',
                  fontSize: quranFontSize,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: IconButton(
                  onPressed: () async {
                    final box = context.findRenderObject() as RenderBox?;

                    await Share.share(
                      widget.aya,
                      subject: 'اللهم اجرني من النار',
                      sharePositionOrigin:
                          box!.localToGlobal(Offset.zero) & box.size,
                    );
                  },
                  icon: Icon(
                    Icons.share,
                    color: m3Color,
                    size: quranFontSize / 1.5,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
