import 'dart:async';

import 'package:flutter/material.dart';
import 'package:proj/screens/welcom.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(
      Duration(seconds: 3),
      (timer) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Welcome(),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                child: Image.asset("assets/Images/logo.png"),
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: const [
          //     Text(
          //       "St Store",
          //       style: TextStyle(
          //         fontSize: 30,
          //         fontWeight: FontWeight.w500,
          //       ),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
