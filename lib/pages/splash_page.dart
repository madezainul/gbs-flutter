import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gbs/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget logoText() {
      return Container(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'G',
                style: linkTextStyle.copyWith(
                  fontSize: 40,
                  fontWeight: bold,
                ),
              ),
              Text(
                'BS',
                style: yellowTextStyle.copyWith(
                  fontSize: 40,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                width: 150,
              ),
              logoText(),
            ],
          ),
        ),
        // child: Row(
        //   children: [
        //     Text(
        //       'G',
        //       style: linkTextStyle.copyWith(
        //         fontSize: 40,
        //         fontWeight: bold,
        //       ),
        //     ),
        //     Text(
        //       'BS',
        //       style: yellowTextStyle.copyWith(
        //         fontSize: 40,
        //         fontWeight: bold,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
