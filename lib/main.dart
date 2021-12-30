import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:responsive_app/constants.dart';
import 'package:responsive_app/desktop.dart';
import 'package:responsive_app/mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // first code in branch
  // first code in Second_branch
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: Builder(
          builder: (BuildContext context) {
            print(getOs());
            if (MediaQuery.of(context).size.width.toInt() <= 570) {
              return MediaQuery(
                  data: MediaQuery.of(context).copyWith(textScaleFactor: 0.7),
                  child: MobileScreen());
            } else
              return DesktopScreen();
          },
        )
        /*LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          print(constraints.minWidth.toInt());
          if (constraints.minWidth.toInt() <= 570) {
            return MobileScreen();
          }
          return DesktopScreen();
        },
      ),*/
        );
  }
}
