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
              DeckCardRow(DeckCard('Everything'), DeckCard('Technology')),
              DeckCardRow(DeckCard('Entertainment'), DeckCard('Sports')),
              DeckCardRow(DeckCard('Transportation'), DeckCard('Home')),
              DeckCardRow(DeckCard('Food / Drink'), DeckCard('Animals')),
            ],
          ),
      ),
    );
  }
}

class DeckCardRow extends StatelessWidget {
  final DeckCard card1;
  final DeckCard card2;
  DeckCardRow(this.card1, this.card2);

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
                  child: card1,
              ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              child: card2,
            ),
          ),
        ],
      ),
    );
  }
}


class DeckCard extends StatelessWidget {

  final String name;
  DeckCard(this.name);

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
              child: Container(
                padding: EdgeInsets.all(5.0),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    name.toUpperCase(),
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
          ),
        ],
      ),
    );
  }
}
