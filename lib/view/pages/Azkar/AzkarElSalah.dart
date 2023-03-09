import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../widgets/componemts/CubitAzkar.dart';
import '../../widgets/componemts/components.dart';
import '../../widgets/componemts/statesOfAzkar.dart';

class AzkarElSalah extends StatefulWidget {
  @override
  _AzkarElSalahState createState() => _AzkarElSalahState();
}

class _AzkarElSalahState extends State<AzkarElSalah> {
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
                        AzkarCubit.get(context).FirstState(x: 75);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'أَسْـتَغْفِرُ الله،  أَسْـتَغْفِرُ الله،  أَسْـتَغْفِرُ الله اللّهُـمَّ أَنْـتَ السَّلامُ ، وَمِـنْكَ السَّلام ، تَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام',
                          count: '${AzkarCubit.get(context).count[75]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 76);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير، اللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، وَلا مُعْطِـيَ لِما مَنَـعْت، وَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد',
                          count: '${AzkarCubit.get(context).count[76]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 77);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'لا إلهَ إلاّ اللّه, وحدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمد، وهوَ على كلّ شيءٍ قدير، لا حَـوْلَ وَلا قـوَّةَ إِلاّ بِاللهِ، لا إلهَ إلاّ اللّـه، وَلا نَعْـبُـدُ إِلاّ إيّـاه, لَهُ النِّعْـمَةُ وَلَهُ الفَضْل وَلَهُ الثَّـناءُ الحَـسَن، لا إلهَ إلاّ اللّهُ مخْلِصـينَ لَـهُ الدِّينَ وَلَوْ كَـرِهَ الكـافِرون',
                          count: '${AzkarCubit.get(context).count[77]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 78);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'سُـبْحانَ اللهِ، والحَمْـدُ لله ، واللهُ أكْـبَر',
                          count: '${AzkarCubit.get(context).count[78]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 79);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ، لهُ الملكُ ولهُ الحَمْد، وهُوَ على كُلّ شَيءٍ قَـدير',
                          count: '${AzkarCubit.get(context).count[79]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 80);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                          t2: 'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ',
                          count: '${AzkarCubit.get(context).count[80]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 81);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                          t2: 'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ',
                          count: '${AzkarCubit.get(context).count[81]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 82);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                          t2: 'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ',
                          count: '${AzkarCubit.get(context).count[82]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 83);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: 'أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ ',
                          t2: 'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
                          count: '${AzkarCubit.get(context).count[83]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 84);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'لا إلهَ إلاّ اللّهُ وحْـدَهُ لا شريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، يُحيـي وَيُمـيتُ وهُوَ على كُلّ شيءٍ قدير',
                          count: '${AzkarCubit.get(context).count[84]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 85);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'اللّهُـمَّ إِنِّـي أَسْأَلُـكَ عِلْمـاً نافِعـاً وَرِزْقـاً طَيِّـباً ، وَعَمَـلاً مُتَقَـبَّلاً',
                          count: '${AzkarCubit.get(context).count[85]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 86);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'اللَّهُمَّ أَجِرْنِي مِنْ النَّار',
                          count: '${AzkarCubit.get(context).count[86]}'),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 87);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      child: packetAzkar(
                          t1: '',
                          t2: 'اللَّهُمَّ أَعِنِّي عَلَى ذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ',
                          count: '${AzkarCubit.get(context).count[87]}'),
                    ),
                  ),
                ],
              ),
              // body: ListView(physics: BouncingScrollPhysics(), children: [
              //   Container(
              //     child: PacketSalah(
              //       t1: 'أدعية استفتاح الصلاة',
              //       t2: 'اللَّهُمَّ بَاعِدْ بَيْنِيْ وَبَيْنَ خَطَايَايَ كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ، اللهم نَقِّنِيْ مِنْ خَطَايَايَ كَمَا يُنَقَّى الثَّوْبُ الْأبْيَضُ مِنَ الدَّنَسِ، اللهم اغْسِلْنِيْ مِنْ خَطَايَايَ، بِالثَّلْجِ وَالْمَاءِ والْبَرَدِ',
              //       t3: 'سُبْحَانَكَ سُبْحَانَكَ اللهم وَبِحَمْدِكَ، وَتَبَارَكَ اسْمُكَ، وَتَعَالَى جَدُّكَ، وَلَا إِلَهَ غَيْرُكَ',
              //       t4: 'الْحَمْدُ الْحَمْدُ للّهِ حَمْداً كَثِيراً طَيِّباً مُبَارَكاً فِيهِ',
              //       t5: 'اللهُ أكْبَرُ كَبِيْرًا، وَالْحَمْدُ لِلهِ كَثِيْرًا، وَسُبْحَانَ اللهِ بُكْرَةً وَّاصِيْلًا. أعُوْذُ بِاللهِ مِنَ الشَّيْطَانِ: مِنْ نَفْخِهِ، وَنَفْثِهِ، وَهَمْزِهِ',
              //       t6: 'اللَّهُمَّ رَبَّ جَبْرَائِيلَ، وَمِيْكَائِيلَ، وَإِسْرَافِيْلَ، فَاطِرَ السَّمَوَاتِ وَالْأرْضِ، عَالِمَ الغَيْبِ وَالشَّهَادَةِ أنْتَ تَحْكُمُ بَيْنَ عِبَادِكَ فِيْمَا كَانُوا فِيْهِ يَخْتَلِفُونَ، اِهْدِنِيْ لِمَا اخْتُلِفَ فِيْهِ مِنَ الْحَقِّ بِإِذْنِكَ إِنَّكَ تَهْدِيْ مَنْ تَشَاءُ إِلَى صِرَاطٍ مُّسْتَقِيْمٍ',
              //       t7: 'وَجَّهْتُ وَجْهِيَ لِلَّذِيْ فَطَرَ السَّمَوَاتِ وَالْأرْضَ حَنِيْفًا وَّمَا أنَا مِنَ الْمُشْرِكِيْنَ، إِنَّ صَلَاتِيْ، وَنُسُكِيْ، وَمَحْيَايَ، وَمَمَاتِيْ لِلهِ رَبِّ الْعَالَمِيْنَ، لَا شَرِيْكَ لَهُ وَبِذَلِكَ أُمِرْتُ وَانَا مِنَ الْمُسْلِمِيْنَ، اللهم أنْتَ الْمَلِكُ لَا إِلَهَ إِلَّا أنْتَ، أنْتَ رَبِّيْ وَأنَا عَبْدُكَ، ظَلَمْتُ نَفْسِيْ وَاعْتَرَفْتُ بِذَنْبِيْ فَاغْفِرْ لِيْ ذُنُوْبِيْ جَمِيْعًا إِنَّهُ لَا يَغْفِرُ الذُّنوبَ إِلَّا أنْتَ. وَاهْدِنِيْ لِأحْسَنِ الْأخْلَاقِ لَا يَهْدِيْ لِأحْسَنِهَا إِلَّا أنْتَ، وَاصْرِفْ عَنِّيْ سَيِّئَهَا، لَا يَصْرِفُ عَنِّيْ سَيِّئَهَا إِلَّا أنْتَ، لَبَّيْكَ وَسَعْدَيْكَ، وَالْخَيْرُ كُلُّهُ بِيَدَيْكَ، وَالشَّرُّ لَيْسَ إِلَيْكَ، أنَا بِكَ وَإِلَيْكَ، تَبارَكْتَ وَتَعَالَيْتَ، أسْتَغْفِرُكَ وَأتُوْبُ إِلَيْكَ',
              //     ),
              //   ),
              //   PacketSalah(
              //       t1: 'أدعية الركوع',
              //       t2: 'سُبْحانَ رَبِّيَ الْعَظِيْمِ. ثلاث مراتٍ أو أكثر',
              //       t3: 'سُبْحَانَ رَبِّيَ العَظِيمِ وَبِحَمْدِهِ. ثلاث مراتٍ',
              //       t4: 'سُبحانَكَ اللّهمَّ ربَّنا وَبِحمدِكَ، اللّهمَّ اغفِرْ لي',
              //       t5: 'سُبُّوُحٌ ، قُدُّوسٌ، رَبُّ المَلَائِكَةِ وَالرُّوْحِ',
              //       t6: 'سُبْحَانَ ذِيْ الْجَبَرُوْتِ، وَالْمَلَكُوْتِ، وَالْكِبْرِيَاءِ، وَالْعَظَمَةِ',
              //       t7: 'اللَّهُمَّ لَكَ رَكَعْتُ، وَبِكَ آمَنْتُ، وَلَكَ أَسْلَمْتُ، خَشَعَ لَكَ سَمْعِي وَبَصَرِي، وَمُخِّي وَعَظْمِي وَعَصَبِي'),
              //   PacketSalah(
              //       t1: 'أدعية الرفع من الركوع',
              //       t2: 'رَبَّنَا وَلَكَ الْحَمْدُ، حَمْدًا كَثِيْرًا طَيِّبًا مُبارَكًا فِيْهِ',
              //       t3: 'اللَّهُمَّ لَكَ رَكَعْتُ، وَبِكَ آمَنْتُ، وَلَكَ اسْلَمْتُ، خَشَعَ لَكَ سَمْعِيْ، و بَصَـرِيْ، وَمُخِّيْ، وَعَظْمِيْ، وَعَصَبِيْ، وَمَا استَقَلَّتْ بِهِ قَدَمِيْ لِلهِ رَبِّ الْعَالَمِيْنَ',
              //       t4: 'اللَّهُمَّ رَبَّنَا لَكَ الْحَمْدُ مِلْءَ السَّمَاوَاتِ وَمِلْءَ الْارْضِ، وَمَا بَيْنَهُمَا، وَمِلْءَ مَا شِئْتَ مِنْ شَيْءٍ بَعْدُ، أهْلَ الثَّنَاءِ وَالْمَجْدِ، أحَقُّ مَا قَالَ الْعَبْدُ، وَكُلُّنَا لَكَ عَبْدٌ، اللهم لَا مَانِعَ لِمَا أعْطَيْتَ، وَلَا مُعْطِيَ لِمَا مَنَعْتَ، وَلَا يَنْفَعُ ذَا الجَدِّ مِنْكَ الْجَدُّ',
              //       t5: 'اللَّهُمَّ لَكَ الْحَمْدُ مِلْءَ السَّمَاءِ، وَمِلْءَ الْارْضِ، وَمِلْءَ مَا شِئْتَ مِنْ شَيْءٍ بَعْدُ، اللَّهُمَّ طَهِّرْنِي بِالثَّلْجِ وَالْبَرَدِ، وَالْمَاءِ الْبَارِدِ، اللَّهُمَّ طَهِّرْنِي مِنَ الذُّنُوبِ وَالْخَطَايَا، كَمَا يُنَقَّى الثَّوْبُ الْابْيَضُ مِنَ الْوَسَخِ',
              //       t6: '',
              //       t7: ''),
              // ]),
            ),
          );
        },
      ),
    );
  }
}
