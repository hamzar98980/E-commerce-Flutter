import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:proj/screens/product.dart';
import 'package:proj/utility/colors.dart';
import 'package:proj/utility/stringtext.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(
                    Textstring.browsecategory,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Image.asset("assets/Images/Item.png"),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Product()));
                    },
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Image.asset("assets/Images/Item.png"),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: Image.asset("assets/Images/Item.png"),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Text(
                    Textstring.recommend,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset("assets/Images/recommend_2.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset("assets/Images/recommend.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.35,
                      width: MediaQuery.of(context).size.width * 0.4,
                      child: Image.asset("assets/Images/recommend_2.png"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Slider1 extends StatefulWidget {
  const Slider1({super.key});

  @override
  State<Slider1> createState() => _Slider1State();
}

class _Slider1State extends State<Slider1> {
  List<Widget> _demo = [
    Container(
      height: 300,
      width: 250,
      child: Image.asset("assets/Images/mic.png"),
    ),
    Container(
      height: 300,
      width: 250,
      child: Image.asset("assets/Images/mic.png"),
    ),
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 260,
          width: double.infinity,
          child: PageView(
            children: _demo,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
          ),
        ),
        CarouselIndicator(
          activeColor: Color(colorsconst.primarycolor),
          color: Colors.grey,
          count: _demo.length,
          index: pageIndex,
        ),
      ],
    );
  }
}
