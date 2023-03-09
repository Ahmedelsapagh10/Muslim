import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class Qiblah extends StatefulWidget {
  const Qiblah({Key? key}) : super(key: key);

  @override
  State<Qiblah> createState() => _QiblahState();
}

Animation<double>? animation;
AnimationController? _animationController;
double begin = 0.0;

class _QiblahState extends State<Qiblah> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    animation = Tween(begin: 0.0, end: 0.0).animate(_animationController!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: m4Color,
          body: StreamBuilder(
            stream: FlutterQiblah.qiblahStream,
            builder: (context, AsyncSnapshot<QiblahDirection> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(
                          color: Colors.white,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'قم بالاتصال بالانترنت لحساب موقعك',
                          style: TextStyle(color: m4Color),
                        )
                      ],
                    ));
              }

              final qiblahDirection = snapshot.data;

              animation = Tween(
                      begin: begin,
                      end: (qiblahDirection!.qiblah * (pi / 180) * -1))
                  .animate(_animationController!);
              begin = (qiblahDirection.qiblah * (pi / 180) * -1);
              _animationController!.forward(from: 0);

              return Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Flexible(
                        child: SizedBox(
                            height: MediaQuery.of(context).orientation ==
                                    Orientation.landscape
                                ? MediaQuery.of(context).size.width / 3
                                : MediaQuery.of(context).size.width / 1.3,
                            child: Stack(
                              alignment: Alignment.center,
                              fit: StackFit.expand,
                              children: [
                                SvgPicture.asset('assets/images/compass.svg'),
                                AnimatedBuilder(
                                    animation: animation!,
                                    builder: (context, child) =>
                                        Transform.rotate(
                                            angle: animation!.value,
                                            child: SvgPicture.asset(
                                                'assets/images/needle.svg')))
                              ],
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).orientation ==
                                Orientation.landscape
                            ? 5
                            : 10,
                      ),
                      Text(
                        "${qiblahDirection.direction.toInt()}°",
                        style: const TextStyle(color: m4Color, fontSize: 24),
                      ),
                    ]),
              );
            },
          )),
    );
  }

  @override
  void dispose() {
    super.dispose();
    FlutterQiblah().dispose();
    if (_animationController != null) _animationController?.dispose();
  }
}
