import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';

import 'package:muslim/view/pages/Tasabeh/pages/model.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:screenshot/screenshot.dart';

import '../../../../constants.dart';

class Tscreen extends StatefulWidget {
  final TModel? mode;
  const Tscreen({
    Key? key,
    this.mode,
  }) : super(key: key);

  @override
  State<Tscreen> createState() => _TscreenState();
}

class _TscreenState extends State<Tscreen> {
  ScreenshotController screencontroller = ScreenshotController();
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: m6Color,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: myWidget(),
          ),
          //////////////////
          Expanded(
            flex: 2,
            child: Container(
              //  color: m6Color,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: (() => setState(() {
                            counter = 0;
                          })),
                      child: Icon(
                        Icons.restore_rounded,
                        size: 24,
                        color: mColor,
                      )),
                  IconButton(
                      iconSize: 64,
                      onPressed: (() => setState(() {
                            counter++;
                          })),
                      icon: const Icon(
                        Icons.add,
                        //    size: 42,
                        color: mColor,
                      )),
                  TextButton(
                      onPressed: () async {
                        final image2 = await screencontroller
                            .captureFromWidget(myWidget());

                        if (image2 == null) return;
                        //     await saveImage(image);
                        await saveImage(image2).then((value) {});
                      },
                      child: const Icon(
                        Icons.file_download_outlined,
                        size: 24,
                        color: mColor,
                      )),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  Future<String> saveImage(Uint8List bytes) async {
    await [Permission.storage].request();
    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('.', '_')
        .replaceAll(':', '_');
    final name = '’muslim_$time';
    final result = await ImageGallerySaver.saveImage(bytes, name: name);
    return result['filePath'];
  }

  ///

  Widget myWidget() {
    return Container(
      color: m6Color,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          MediaQuery.of(context).orientation == Orientation.landscape
              ? Expanded(
                  child: Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    widget.mode!.image,
                    width: MediaQuery.of(context).size.width / 6,
                  ),
                ))
              : Expanded(
                  flex: 2,
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      widget.mode!.image,
                      width: MediaQuery.of(context).size.width / 2,
                    ),
                  ),
                ),
          Expanded(
            child: Wrap(
              // direction:
              //     MediaQuery.of(context).orientation == Orientation.landscape
              //         ? Axis.vertical
              //         : Axis.horizontal,
              // alignment: WrapAlignment.center,
              // crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    widget.mode!.name + " ",
                    style: const TextStyle(
                      fontSize: 28,
                      color: mColor,
                      fontFamily: 'Tajawal-Regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    counter.toString(),
                    style: const TextStyle(
                      fontSize: 32,
                      color: mColor,
                      fontFamily: 'Tajawal-Regular',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*

 Container(
            //  color: m6Color,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: (() => setState(() {
                          counter = 0;
                        })),
                    child: Icon(
                      Icons.restore_rounded,
                      size: 24,
                      color: mColor,
                    )),
                IconButton(
                    iconSize: 64,
                    onPressed: (() => setState(() {
                          counter++;
                        })),
                    icon: const Icon(
                      Icons.add,
                      //    size: 42,
                      color: mColor,
                    )),
                TextButton(
                    onPressed: () async {
                      final image2 = await screencontroller.captureFromWidget(
                          myWidget(screencontroller: screencontroller));

                      if (image2 == null) return;
                      //     await saveImage(image);
                      await saveImage(image2).then((value) {});
                    },
                    child: const Icon(
                      Icons.summarize,
                      size: 24,
                      color: mColor,
                    )),
              ],
            ),
          ),
 */