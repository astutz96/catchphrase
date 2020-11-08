import 'package:flutter/material.dart';
import 'package:catchphrase/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'Flutter Demo',
      theme: ThemeData.from(
        colorScheme: ColorScheme.light(
          primary: Color(0xff003049),
          primaryVariant: Color(0xff1b4960),
          secondary: Color(0xfff77f00),
          secondaryVariant: Color(0xfffcbf49),
          background: Color(0xffeae2b7),
          brightness: Brightness.light,
        ),
      ).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary : Color(0xffd62828),
            textStyle: TextStyle(
              color: Color(0xffffffff),
            )
          )
        ),
      ),
    );
  }
}