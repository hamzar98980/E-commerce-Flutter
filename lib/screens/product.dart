import 'package:flutter/material.dart';
import 'package:proj/utility/colors.dart';
import 'package:proj/utility/stringtext.dart';

import '../utility/componenets.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: const [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.menu_open_outlined,
              color: Colors.black,
            ),
          )
        ],

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
            Productview(),
          ],
        ),
      ),
    );
  }
}
