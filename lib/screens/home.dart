import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:proj/utility/colors.dart';
import 'package:proj/utility/componenets.dart';
import 'package:proj/utility/stringtext.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Page1(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
              gap: 8,
              tabBackgroundColor: Color(colorsconst.primarycolor),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  padding: EdgeInsets.all(15),
                ),
                GButton(
                  icon: Icons.search,
                  text: "Search",
                  padding: EdgeInsets.all(15),
                ),
                GButton(
                  icon: Icons.shopping_bag,
                  text: "Store",
                  padding: EdgeInsets.all(15),
                ),
                GButton(
                  icon: Icons.person,
                  text: "Profile",
                  padding: EdgeInsets.all(15),
                )
              ]),
        ),
      ),
    );
  }
}
