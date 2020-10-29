import 'package:flutter/material.dart';

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Welcome To Catchphrase!'),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Play'),
                      onPressed: null,
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Select Deck'),
                      onPressed: null,
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