import 'package:flutter/material.dart';
import 'package:proj/screens/home.dart';
import 'package:proj/screens/login.dart';
import 'package:proj/utility/colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 1,
                          height: MediaQuery.of(context).size.height * 0.65,
                        ),
                        Positioned(
                          right: 0,
                          child: Container(
                            width: 150,
                            height: 320,
                            // color: Colors.amber,
                            child: Image.asset(
                              "assets/Images/Oval.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          right: 40,
                          top: 60,
                          child: Container(
                            width: 300,
                            height: 300,
                            // color: Colors.amber,
                            child: Image.asset(
                              "assets/Images/chair_2.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 180,
                          child: Container(
                            width: 125,
                            height: 230,
                            // color: Colors.amber,
                            child: Image.asset(
                              "assets/Images/oval_2.png",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Welcome to STStore !",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "With long experience in the audio industry,",
              ),
            ),
            const Text("we create the best quality products"),
            Padding(
              padding: const EdgeInsets.all(7),
              child: Container(
                width: 250,
                child: ElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Get Started"),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                      ),
                      Icon(Icons.arrow_right_alt)
                    ],
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color(colorsconst.primarycolor))),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const Home()),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
