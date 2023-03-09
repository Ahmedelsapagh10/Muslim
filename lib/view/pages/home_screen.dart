import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muslim/view/pages/Azkar/Azkar.dart';
import 'package:muslim/view/pages/Homecomponent.dart';
import 'package:muslim/view/pages/Quran/QuranScreen.dart';
import 'package:muslim/view/pages/Tasabeh/pages/TasabenScreen.dart';
import 'package:muslim/view/pages/qipla/qiblaScreen.dart';

import '../../constants.dart';
import '../widgets/componemts/components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: m6Color,
        body: CustomScrollView(slivers: [
          MediaQuery.of(context).orientation == Orientation.landscape
              ? const SliverAppBar(
                  title: Text(
                    'مسلم',
                    textScaleFactor: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Tajawal-Regular',
                      color: m3Color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                  backgroundColor: m6Color,
                )
              : SliverAppBar(
                  title: const Text(
                    'مسلم',
                    textScaleFactor: 1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Tajawal-Regular',
                      color: m3Color,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                  backgroundColor: m6Color,

                  expandedHeight: MediaQuery.of(context).size.height / 3,
                  pinned: true,
                  stretch: false,
                  floating: false,
                  snap: false,

                  elevation: 0,
                  flexibleSpace: FlexibleSpaceBar(
                    centerTitle: MediaQuery.of(context).orientation ==
                            Orientation.landscape
                        ? false
                        : true,
                    background: Hero(
                      tag: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/images/Aqsa.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),

                  ///////////////////////////////
                  systemOverlayStyle: SystemUiOverlayStyle.light,
                ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: const BoxDecoration(
                  color: m6Color,
                ),
                child: Column(
                  children: [
                    GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 4
                            : 2,
                      ),
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                        pagesShortCut(
                            context: context,
                            name: 'القرأن الكريم',
                            page: const QuranScreen(),
                            image: 'assets/images/quran-rehal.png'),
                        pagesShortCut(
                            name: 'إتجاه القبله',
                            context: context,
                            page: const QiblaScreen(),
                            image: 'assets/images/qibla.png'),
                        pagesShortCut(
                            name: 'الأذكار اليوميه',
                            context: context,
                            page: const AzkarScreen(),
                            image: 'assets/images/islamic-pray.png'),
                        pagesShortCut(
                            name: 'السبحه الإلكترونيه',
                            context: context,
                            page: const TasabehScreen(),
                            image: 'assets/images/prayer-beads.png')
                      ],
                    ),
                    packetAzkarMain(
                      context: context,
                      t1: 'يا رب اشرح لها صدرها و يسر أمرها يا رب لا تُريها بئسًا يُبكيها و لا همًا يشغلها ربي استودعتك قلبها من الحزن و الهم وأبعد عنها الضيقة يا رب',
                    ),
                    packetAzkarMain(
                      context: context,
                      t1: 'اللهم أني ظلمت نفسي، ولا يغفر الذنوب إلا أنت، فاغفر لي وارحمني',
                    ),
                    packetAzkarMain(
                      context: context,
                      t1: 'اللهم إني أسألك الهدى والغنى وأسألك التقى وأسألك العفاف',
                    ),
                    packetAzkarMain(
                      context: context,
                      t1: 'اللهم إني أستخيرك بعلمك، واستقدرك بقدرتك، وأسألك من فضلك العظيم، فإنك تقدر ولا أقدر، وتعلم ولا أعلم، وأنت علام الغيوب، اللهم أن كنت تعلم أن هذا الأمر خير لي، فيسره لي، ولو كنت تعلم أن هذا الأمر شر اصرفه عني يا كريم',
                    ),
                  ],
                )),
          ]))
        ]),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            if (value == 0) {
              Navigator.pushNamed(context, 'tasabeh');
            }
            if (value == 1) {
              Navigator.pushNamed(context, 'qibla');
            }

            if (value == 2) {
              Navigator.pushNamed(context, 'quran');
            }
            if (value == 3) {
              Navigator.pushNamed(context, 'azkar');
            }
          },
          items: const [
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage(
                    'assets/images/dua-hands.png',
                  ),
                  width: 30,
                  height: 30,
                ),
                label: 'التسابيح'),
            BottomNavigationBarItem(
                icon: Image(
                  image: AssetImage('assets/images/qibla.png'),
                  width: 30,
                  height: 30,
                ),
                label: 'القبله'),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/quran-rehal.png'),
                width: 30,
                height: 30,
              ),
              label: 'القران الكريم',
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage('assets/images/prayer-beads.png'),
                width: 30,
                height: 30,
              ),
              label: ' الاذكار',
            ),
          ],
        ),
      ),
    );
  }
}
