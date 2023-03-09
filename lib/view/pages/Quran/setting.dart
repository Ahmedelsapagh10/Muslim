import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:muslim/constants.dart';
import 'package:muslim/view/pages/Quran/Quran_view.dart';
import 'package:muslim/view/pages/Quran/Widgets.dart';

import 'controller/cubit.dart';
import 'controller/state.dart';

class Setting extends StatefulWidget {
  final String suranName;
  final int suranNum;
  const Setting({
    Key? key,
    required this.suranName,
    required this.suranNum,
  }) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuranCubit, QuranState>(
      builder: (context, state) {
        QuranCubit controller = context.read<QuranCubit>();
        return Scaffold(
          backgroundColor: m3Color,
          appBar: AppBar(
            backgroundColor: m3Color,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    color: m6Color,
                  ))
            ],
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Slider(
                        activeColor: m6Color,
                        inactiveColor: blac2Color,
                        value: quranFontSize,
                        min: 16,
                        label: quranFontSize.round().toString(),
                        max: 64,
                        onChanged: (value) {
                          setState(() {
                            quranFontSize = value;
                          });
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text(
                        'حجم الخط',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'Tajawal-Regular',
                          fontSize: 18,
                          color: m6Color,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    Basmala,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'Tajawal-Regular',
                      fontSize: quranFontSize,
                      color: m4Color,
                    ),
                  ),
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: myButton(
                          context: context,
                          buttomName: 'حفظ',
                          onTap: () {
                            controller.onTapToSava(context: context);
                            Navigator.pop(context);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuranView(
                                          suranName: widget.suranName,
                                          suranNum: widget.suranNum,
                                        )));
                          },
                          suranName: widget.suranName,
                          suranNum: widget.suranNum),
                    ),
                    Expanded(
                      child: myButton(
                          context: context,
                          buttomName: 'إعادة الوضع',
                          onTap: () {
                            setState(() {
                              quranFontSize = 28;
                            });
                            setFontSize();
                            getFontSize();
                            Navigator.pop(context);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => QuranView(
                                          suranName: widget.suranName,
                                          suranNum: widget.suranNum,
                                        )));
                          },
                          suranName: widget.suranName,
                          suranNum: widget.suranNum),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
