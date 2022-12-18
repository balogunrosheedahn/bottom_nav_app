import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
void main() => runApp(MaterialApp(
    builder: (context, child) {
      return Directionality(textDirection: TextDirection.ltr, child: child!,);
    },
    title: "GNav",
    theme: ThemeData(
      primaryColor: Colors.grey[800],
    ),
    home: Example()));
class Example extends StatefulWidget {
  @override
   createState() => ExampleState();
}
class ExampleState extends State<Example> {
  int selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> widgetOptions = <Widget>[
  Text(
  "Home",
  style: optionStyle,
  ),
    Text(
      'Profile',
      style: optionStyle,
    ),
    Text(
      'Settings',
      style: optionStyle,
    ),
  ];
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
        child: widgetOptions.elementAt(selectedIndex),
        ),
        bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
      BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
    ]),
    child: SafeArea(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
    child: GNav(
            rippleColor: Colors.grey.shade800, // tab button ripple color when pressed
            hoverColor: Colors.grey.shade700,
            gap:8,
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
            tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
            tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: Duration(milliseconds: 900), // tab animation duration
            color: Colors.grey[800], // unselected icon color
            activeColor: Colors.purple, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
            tabs: [
              GButton(
                icon: LineIcons.home,
                text: 'Home',
              ),
              GButton(
                icon: LineIcons.user,
                text: 'Profile',
              ),
              GButton(
                icon: LineIcons.cog,
                text: 'Settings',
              )
            ]

    ),

    ),
    ),
    ),
    );

  }
}
