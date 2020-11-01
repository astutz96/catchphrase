import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:catchphrase/select_deck_screen.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        primary:  false,
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
      ),
      body: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 7,
              child: Container(
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            Expanded(
              flex:  13,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}



// color: Theme.of(context).primaryColor,
// padding: EdgeInsets.all(28),
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.all(Radius.circular(5.0)),
// //color: Color(0xffeeebe6),
// color: Theme.of(context).colorScheme.background,
// ),
// child: Center(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: <Widget>[
// Center(
// child: ConstrainedBox(
// constraints: BoxConstraints(
// maxWidth: 200,
// maxHeight: 200,
// ),
// child: Text(
// 'Welcome to Catchphrase!',
// textAlign: TextAlign.center,
// style: TextStyle(
// fontSize: 26,
// fontWeight: FontWeight.w800,
// ),
// ),
// ),
// ),
// Container(
// child: Column(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: <Widget>[
// ConstrainedBox(
// constraints: BoxConstraints(
// minWidth: 150,
// minHeight: 85,
// ),
// child: ElevatedButton(
// child: Text('Play'),
// onPressed: () {},
// ),
// ),
// SizedBox(height: 12.0,),
// ConstrainedBox(
// constraints: BoxConstraints(
// minWidth: 150,
// minHeight: 85,
// ),
// child: ElevatedButton(
// child: Text('Select Deck'),
// onPressed: () {
// Navigator.push(
// context,
// MaterialPageRoute(builder: (context) => SelectDeckScreen())
// );
// },
// ),
// ),
// ],
// ),
// )
// ],
// ),
// ),
// ),