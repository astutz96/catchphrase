import 'package:flutter/material.dart';

class SelectDeckScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SELECT A DECK',
            style: TextStyle(
            fontFamily: 'Lato',
            letterSpacing: 2.0
        ),
        ),
        centerTitle: true,
      ),
      body: Container(
          child: ListView(
            children: <Widget>[
              DeckCardRow(),
              DeckCardRow(),
              DeckCardRow(),
              DeckCardRow(),
            ],
          ),
      ),
    );
  }
}

class DeckCardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height *.33,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                  child: DeckCard(),
              ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: DeckCard(),
            ),
          ),
        ],
      ),
    );
  }
}


class DeckCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18.0))
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
              //padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(18.0)),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  'ANIMALS',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Lato',
                      fontSize: 22.0,
                      letterSpacing: 2.0
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
