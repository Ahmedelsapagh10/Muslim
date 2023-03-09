import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muslim/view/pages/Quran/Quran_view.dart';

import '../../../constants.dart';
import 'Widgets.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({Key? key}) : super(key: key);

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await getFontSize();
      getViewMode();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
          title: const Text(
            'القران الكريم',
            style: TextStyle(
              color: m6Color,
              fontFamily: 'Tajawal-Regular',
              fontWeight: FontWeight.bold,
            ),
          )),
      body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text(
                      'الايات',
                      style: TextStyle(
                        color: m6Color,
                        fontFamily: 'Tajawal-Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'السوره',
                      style: TextStyle(
                        color: m6Color,
                        fontFamily: 'Tajawal-Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'الجزء',
                      style: TextStyle(
                        color: m6Color,
                        fontFamily: 'Tajawal-Regular',
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: ListView.builder(
                    itemCount: arabicName.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => QuranView(
                                          suranName: arabicName[index]['name'],
                                          suranNum: index + 1,
                                        ))));
                          },
                          child: Item_widget(
                            context,
                            index,
                          ));
                    }),
              ),
            ],
          )),
    );
  }
}
