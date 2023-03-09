import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../constants.dart';
import 'dart:math' show pi;
// import 'package:flutter_qiblah/flutter_qiblah.dart';
import 'dart:math';

import 'package:flutter_compass/flutter_compass.dart';
import 'package:geolocator/geolocator.dart';

import 'Qiblah.dart';
import 'offline_widget.dart';

class QiblaScreen extends StatefulWidget {
  const QiblaScreen({Key? key}) : super(key: key);

  @override
  State<QiblaScreen> createState() => _QiblaScreenState();
}

class _QiblaScreenState extends State<QiblaScreen> {
  bool hasPermission = false;
  Future getPermission() async {
    if (await Permission.location.serviceStatus.isEnabled) {
      var status = await Permission.location.status;
      if (status.isGranted) {
        hasPermission = true;
      } else {
        Permission.location.request().then((value) {
          hasPermission = (value == PermissionStatus.granted);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: m4Color,
      appBar: AppBar(
        backgroundColor: m4Color,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: m3Color,
              ))
        ],
        automaticallyImplyLeading: false,
      ),
      body: OfflineBuilder(
        connectivityBuilder: (BuildContext context,
            ConnectivityResult connectivity, Widget child) {
          final bool connected = connectivity != ConnectivityResult.none;
          if (connected) {
            return FutureBuilder(
                future: getPermission(),
                builder: ((context, snapshot) {
                  if (hasPermission) {
                    return const Qiblah();
                  } else {
                    return const Scaffold(
                      backgroundColor: m4Color,
                      body: Center(
                        child: Text(
                          'قم بتشغيل خاصية الموقع',
                          style: TextStyle(color: m3Color),
                        ),
                      ),
                    );
                  }
                }));
          } else {
            return NoInterNetConnection();
          }
        },
        child: FutureBuilder(
            future: getPermission(),
            builder: ((context, snapshot) {
              if (hasPermission) {
                return const Qiblah();
              } else {
                return const Scaffold(
                  backgroundColor: Color.fromARGB(255, 48, 48, 48),
                  body: Center(
                    child: Text(
                      'قم بتشغيل خاصية الموقع',
                      style: TextStyle(color: m4Color),
                    ),
                  ),
                );
              }
            })),
      ),
    );
  }
}
