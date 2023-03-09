import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../widgets/componemts/CubitAzkar.dart';
import '../../widgets/componemts/components.dart';
import '../../widgets/componemts/statesOfAzkar.dart';

class AzkarElnoum extends StatefulWidget {
  @override
  _AzkarElnoumState createState() => _AzkarElnoumState();
}

class _AzkarElnoumState extends State<AzkarElnoum> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AzkarCubit(),
      child: BlocConsumer<AzkarCubit, AzkarStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              backgroundColor: m3Color,
              body: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 61);
                      } catch (e) {
                        print('');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'بِاسْمِكَ رَبِّـي وَضَعْـتُ جَنْـبي ، وَبِكَ أَرْفَعُـه، فَإِن أَمْسَـكْتَ نَفْسـي فارْحَـمْها ، وَإِنْ أَرْسَلْتَـها فاحْفَظْـها بِمـا تَحْفَـظُ بِه عِبـادَكَ الصّـالِحـين',
                          count: '${AzkarCubit.get(context).count[61]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 62);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'اللّهُـمَّ قِنـي عَذابَـكَ يَـوْمَ تَبْـعَثُ عِبـادَك',
                          count: '${AzkarCubit.get(context).count[62]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 63);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'اللّهُـمَّ إِنَّـكَ خَلَـقْتَ نَفْسـي وَأَنْـتَ تَوَفّـاهـا لَكَ ممَـاتـها وَمَحْـياها ، إِنْ أَحْيَيْـتَها فاحْفَظْـها ، وَإِنْ أَمَتَّـها فَاغْفِـرْ لَـها . اللّهُـمَّ إِنَّـي أَسْـأَلُـكَ العـافِـيَة',
                          count: '${AzkarCubit.get(context).count[63]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 64);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'بِاسْـمِكَ اللّهُـمَّ أَمـوتُ وَأَحْـيا',
                          count: '${AzkarCubit.get(context).count[64]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 65);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'الـحَمْدُ للهِ الَّذي أَطْـعَمَنا وَسَقـانا، وَكَفـانا، وَآوانا، فَكَـمْ مِمَّـنْ لا كـافِيَ لَـهُ وَلا مُـؤْوي',
                          count: '${AzkarCubit.get(context).count[65]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 66);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'اللّهُـمَّ عالِـمَ الغَـيبِ وَالشّـهادةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كُـلِّ شَـيءٍ وَمَليـكَه، أَشْهـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي، وَمِن شَـرِّ الشَّيْـطانِ وَشِـرْكِه، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم',
                          count: '${AzkarCubit.get(context).count[66]}'),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        try {
                          AzkarCubit.get(context).FirstState(x: 67);
                        } catch (e) {
                          print('$e');
                        }
                      },
                      child: Container(
                          child: packetAzkar(
                              t1: '',
                              t2: 'سُبْحَانَ اللَّهِ',
                              count: '${AzkarCubit.get(context).count[67]}'))),
                  InkWell(
                      onTap: () {
                        try {
                          AzkarCubit.get(context).FirstState(x: 68);
                        } catch (e) {
                          print('$e');
                        }
                      },
                      child: Container(
                          child: packetAzkar(
                              t1: '',
                              t2: 'الحمد لله',
                              count: '${AzkarCubit.get(context).count[68]}'))),
                  InkWell(
                      onTap: () {
                        try {
                          AzkarCubit.get(context).FirstState(x: 69);
                        } catch (e) {
                          print('$e');
                        }
                      },
                      child: Container(
                          child: packetAzkar(
                              t1: '',
                              t2: 'الله أكبر',
                              count: '${AzkarCubit.get(context).count[69]}'))),
                  const Center(
                    child: Text(
                      'أذكار النوم للأطفال',
                      textScaleFactor: 1.5,
                      style: TextStyle(color: m4Color),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 70);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: ' أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ',
                          t2: 'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
                          count: '${AzkarCubit.get(context).count[70]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 71);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: 'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ',
                          t2: 'آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ. لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ',
                          count: '${AzkarCubit.get(context).count[71]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 72);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                          t2: ' قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ',
                          count: '${AzkarCubit.get(context).count[72]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 73);
                      } catch (e) {}
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم ',
                          t2: ' قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ',
                          count: '${AzkarCubit.get(context).count[73]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      AzkarCubit.get(context).FirstState(x: 74);
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم ',
                          t2: 'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ',
                          count: '${AzkarCubit.get(context).count[74]}'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
