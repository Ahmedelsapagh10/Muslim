import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants.dart';
import '../../widgets/componemts/CubitAzkar.dart';
import '../../widgets/componemts/components.dart';
import '../../widgets/componemts/statesOfAzkar.dart';

class AzkarElsabah extends StatefulWidget {
  @override
  _AzkarElsabahState createState() => _AzkarElsabahState();
}

class _AzkarElsabahState extends State<AzkarElsabah> {
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
                body: ListView(physics: BouncingScrollPhysics(), children: [
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 0);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      child: packetAzkar(
                        t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                        t2: 'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ',
                        count: '${AzkarCubit.get(context).count[0]}',
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      AzkarCubit.get(context).FirstState(x: 1);
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                            t2: 'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ',
                            count: '${AzkarCubit.get(context).count[1]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 2);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                            t2: 'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ',
                            count: '${AzkarCubit.get(context).count[2]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 3);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: 'بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم',
                            t2: 'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ',
                            count: '${AzkarCubit.get(context).count[3]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 4);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُ بِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر',
                            count: '${AzkarCubit.get(context).count[4]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 5);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ، خَلَقْتَنـي وَأَنا عَبْـدُك، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت، أَعـوذُ بِكَ مِنْ شَـرِّ ما صَنَـعْت، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ',
                            count: '${AzkarCubit.get(context).count[5]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 6);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً',
                            count: '${AzkarCubit.get(context).count[6]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 7);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك، وَمَلَائِكَتَكَ، وَجَمـيعَ خَلْـقِك، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك',
                            count: '${AzkarCubit.get(context).count[7]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 8);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر',
                            count: '${AzkarCubit.get(context).count[8]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 9);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم',
                            count: '${AzkarCubit.get(context).count[9]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 10);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم',
                            count: '${AzkarCubit.get(context).count[10]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 11);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور',
                            count: '${AzkarCubit.get(context).count[11]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 12);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ',
                            count: '${AzkarCubit.get(context).count[12]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 13);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه، وَرِضـا نَفْسِـه، وَزِنَـةَ عَـرْشِـه، وَمِـدادَ كَلِمـاتِـه',
                            count: '${AzkarCubit.get(context).count[13]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 14);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهُـمَّ عافِـني في بَدَنـي، اللّهُـمَّ عافِـني في سَمْـعي، اللّهُـمَّ عافِـني في بَصَـري، لا إلهَ إلاّ أَنْـتَ',
                            count: '${AzkarCubit.get(context).count[14]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 15);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر، وَالفَـقْر، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر، لا إلهَ إلاّ أَنْـتَ',
                            count: '${AzkarCubit.get(context).count[15]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 16);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتي، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي، وَمِن فَوْقـي، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي',
                            count: '${AzkarCubit.get(context).count[16]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 17);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ',
                            count: '${AzkarCubit.get(context).count[17]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 18);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم ، فَـتْحَهُ، وَنَصْـرَهُ، وَنـورَهُ وَبَـرَكَتَـهُ، وَهُـداهُ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَه',
                            count: '${AzkarCubit.get(context).count[18]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 19);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم',
                            count: '${AzkarCubit.get(context).count[19]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 20);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق',
                            count: '${AzkarCubit.get(context).count[20]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 21);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على سيدنا مُحمَّد',
                            count: '${AzkarCubit.get(context).count[21]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 22);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللّهـمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ',
                            count: '${AzkarCubit.get(context).count[22]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 23);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ',
                            count: '${AzkarCubit.get(context).count[23]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 24);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ',
                            count: '${AzkarCubit.get(context).count[24]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 25);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'يَا رَبِّ، لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ، وَلِعَظِيمِ سُلْطَانِكَ',
                            count: '${AzkarCubit.get(context).count[25]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 26);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا',
                            count: '${AzkarCubit.get(context).count[26]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 27);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ، عَلَيْكَ تَوَكَّلْتُ ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ، مَا شَاءَ اللَّهُ كَانَ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ، أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا ، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ',
                            count: '${AzkarCubit.get(context).count[27]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 28);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِيرِ',
                            count: '${AzkarCubit.get(context).count[28]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 29);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'سُبْحـانَ اللهِ وَبِحَمْـدِهِ',
                            count: '${AzkarCubit.get(context).count[29]}')),
                  ),
                  InkWell(
                    onTap: () {
                      try {
                        AzkarCubit.get(context).FirstState(x: 30);
                      } catch (e) {
                        print('$e');
                      }
                    },
                    child: Container(
                        alignment: Alignment.center,
                        child: packetAzkar(
                            t1: '',
                            t2: 'أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ',
                            count: '${AzkarCubit.get(context).count[30]}')),
                  ),
                ])),
          );
        },
      ),
    );
  }
}
