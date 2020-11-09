import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size.aspectRatio.toString());
    print(MediaQuery.of(context).devicePixelRatio.toString());
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).colorScheme.background,
          //child: Image.asset('assets/images/background_9_19.5.png', fit: BoxFit.fill),
          child: Image(image: AssetImage('assets/homepage_background/background.png'), fit: BoxFit.cover),
          ),
      ],
    );
  }
}