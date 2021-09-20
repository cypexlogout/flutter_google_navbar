// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:navbar_google/widgets.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  PageController pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(80)),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: -10,
                      blurRadius: 60,
                      color: Colors.black.withOpacity(.4),
                      offset: Offset(0, 25))
                ]),
            child: GNav(
              activeColor: Color(0xff3A4276), // unselected icon color

              curve: Curves.fastOutSlowIn,
              duration: Duration(milliseconds: 600),
              //Adding buttons 
              tabs: [
                GButton(
                  gap: 10,
                  icon: LineIcons.home,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.redAccent,
                  text: "Home",
                ),
                GButton(
                  gap: 10,
                  icon: LineIcons.gamepad,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.greenAccent,
                  text: "Games",
                ),
                GButton(
                  gap: 10,
                  icon: LineIcons.moneyCheck,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.redAccent,
                  text: "Balance",
                ),
                GButton(
                  gap: 10,
                  icon: Icons.rule,
                  iconColor: Colors.black,
                  iconActiveColor: Colors.pink,
                  text: "Rules",
                ),
              ],
// To change padge according to selection
              onTabChange: (index) {
                pageController.animateToPage(index,
                    duration: Duration(milliseconds: 600),
                    curve: Curves.fastOutSlowIn);
              },
            ),
          ),
        ),
      ),
      body: PageView(
        controller: pageController,
        //Physics define the nature of pageview 
        physics: NeverScrollableScrollPhysics(),
        //Items arranged according to Gnav Button
        children: [home(),game(),balance(),rules()],
      ),
    );
  }
}
