import 'package:flutter/material.dart';
import 'package:catchphrase/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(
          primary: Color(0xfff0aa1c),
          primaryVariant: Color(0xffffae00),
          secondary: Color(0xff112736),
          secondaryVariant: Color(0xff0a2031),
          background: Color(0xffeeebe6),
          brightness: Brightness.light,
        ),
      ).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary : Color(0xff647484),
          )
        ),
      ),
    );
  }
}