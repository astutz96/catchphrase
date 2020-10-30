import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:catchphrase/select_deck_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: 200,
                    maxHeight: 200,
                  ),
                  child: Text(
                    'Welcome To Catchphrase!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 150,
                        minHeight: 85,
                      ),
                      child: ElevatedButton(
                        child: Text('Play'),
                        onPressed: () {},
                      ),
                    ),
                    SizedBox(height: 12.0,),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: 150,
                        minHeight: 85,
                      ),
                      child: ElevatedButton(
                        child: Text('Select Deck'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SelectDeckScreen())
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}