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
        colorScheme: ColorScheme.light(),
      ).copyWith(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey,
            onSurface: Colors.grey,
            ),
        ),
      ),

    );
  }
}