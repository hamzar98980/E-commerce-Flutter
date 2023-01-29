import 'package:flutter/material.dart';
import 'package:proj/utility/colors.dart';

import '../utility/componenets.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        // actions: [Icon(Icons.arrow_back)],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Text(
                    "SPEAKERS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.45,
                      width: MediaQuery.of(context).size.width * 0.9,
                      // color: Colors.grey,
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.28,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                            color: Color(colorsconst.concolor),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20))),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: Slider1(),
                      // child: SingleChildScrollView(
                      //   scrollDirection: Axis.horizontal,
                      //   child: Row(
                      //     children: [
                      //       Container(
                      //         height: MediaQuery.of(context).size.height * 0.4,
                      //         width: MediaQuery.of(context).size.width * 0.9,
                      //         child: Image.asset("assets/Images/mic.png"),
                      //       ),
                      //       Container(
                      //         height: MediaQuery.of(context).size.height * 0.4,
                      //         width: MediaQuery.of(context).size.width * 0.9,
                      //         child: Image.asset("assets/Images/mic.png"),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
