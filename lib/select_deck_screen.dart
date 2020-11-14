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
      body: DeckMenu([
        'Everything',
        'Technology',
        'Entertainment',
        'Sports',
        'Transportation',
        'Home',
        'Food / Drink',
        //'Animals',
      ]),
    );
  }
}

class DeckMenu extends StatefulWidget {

  final List<String> names;
  DeckMenu(this.names);

  @override
  _DeckMenuState createState() => _DeckMenuState();
}

class _DeckMenuState extends State<DeckMenu> {
  @override
  Widget build(BuildContext context) {
    return _buildMenu(widget.names);
  }

  _buildMenu(List<String> names){
    return ListView(
      children: _buildRows(_buildCards(names)),
    );
  }

  List<DeckCardRow> _buildRows(List<DeckCard> cards){
    makeCardCountEven(cards);
    List<DeckCardRow> cardRows = new List<DeckCardRow>();
    for(var i = 0; i < cards.length; i = i+2){
      cardRows.add(DeckCardRow(cards[i], cards[i+1]));
    }
    return cardRows;
  }

  List<DeckCard>_buildCards(List<String> names){
    List<DeckCard> cards = new List<DeckCard>();
    names.forEach((name) {
      cards.add(DeckCard(name));
    });
    return cards;
  }

  void makeCardCountEven(List<DeckCard> cards) {
    if (cards.length.isOdd){
      cards.add(DeckCard(' '));
    }
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
