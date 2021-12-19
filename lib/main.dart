import 'package:flutter/material.dart';

import './screens/home_screen.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Color(0Xff262F3E)),
          primaryColor: Color(0xff222A37),
          textTheme: ThemeData.light().textTheme.copyWith(
              headline1: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
              bodyText1: TextStyle(color: Colors.grey))),
      initialRoute: "/",
      routes: {"/": (ctx) => Home()},
    );
  }
}
