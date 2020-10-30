import 'package:flutter/cupertino.dart';
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
              Text('Welcome To Catchphrase!'),
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
                        onPressed: () {},
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