import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Theme.of(context).colorScheme.background,
          child: Image(image: AssetImage('assets/homepage_background/background.png'), fit: BoxFit.cover),
          ),
        HomePageButtons(),
      ],
    );
  }
}

class HomePageButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment(0,.6),
      child: FractionallySizedBox(
        widthFactor: .75,
        heightFactor: .25,
        child: Align(
          alignment: Alignment(.5,.5),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  //color: Colors.green,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)
                        ),          
                      ),
                      child: Text('Play',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      onPressed: () => {},
                    ),
                  ),
                ),
                Expanded(
                  //color: Colors.red,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)
                        ),
                      ),
                      child: Text('Select Deck',
                        style: TextStyle(
                            fontSize: 24,
                        ),
                      ),
                      onPressed: () => {},
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: CircleBorder()
                          ),
                          onPressed: () => {},
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder()
                          ),
                          onPressed: () => {},
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder()
                          ),
                          onPressed: () => {},
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: CircleBorder()
                          ),
                          onPressed: () => {},
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}