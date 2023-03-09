import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:muslim/constants.dart';
import 'package:muslim/view/pages/Tasabeh/pages/detailsT_creen.dart';
import 'package:muslim/view/pages/Tasabeh/pages/model.dart';
import 'package:muslim/view/pages/Tasabeh/widgets/Tasabeh_component.dart';

class TasabehScreen extends StatefulWidget {
  const TasabehScreen({Key? key}) : super(key: key);

  @override
  State<TasabehScreen> createState() => _TasabehScreenState();
}

class _TasabehScreenState extends State<TasabehScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: m6Color,
        appBar: AppBar(
          backgroundColor: m6Color,
          title: const Text(
            'التسابيح',
            style: TextStyle(
              fontSize: 24,
              color: mColor,
              fontFamily: 'Tajawal-Regular',
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_forward_ios,
                  color: mColor,
                ))
          ],
          automaticallyImplyLeading: false,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction:
                MediaQuery.of(context).orientation == Orientation.landscape
                    ? Axis.horizontal
                    : Axis.vertical,
            children: [
              TItem(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return Tscreen(
                      mode: TModel(
                        name: 'الله أكبر',
                        image: 'assets/images/bismillah.png',
                      ),
                    );
                  })));
                },
                context: context,
                image: 'assets/images/bismillah.png',
                name: 'الله أكبر',
              ),
              TItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Tscreen(
                        mode: TModel(
                          name: 'سبحان الله',
                          image: 'assets/images/005-islam.png',
                        ),
                      );
                    })));
                  },
                  context: context,
                  image: 'assets/images/005-islam.png',
                  name: 'سبحان الله'),
              TItem(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return Tscreen(
                        mode: TModel(
                          name: 'صلي علي النبي',
                          image: 'assets/images/ramadan.png',
                        ),
                      );
                    })));
                  },
                  context: context,
                  image: 'assets/images/ramadan.png',
                  name: 'صلي علي النبي')
            ],
          ),
        ));
  }
}
