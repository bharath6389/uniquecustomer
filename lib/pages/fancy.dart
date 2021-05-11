import 'dart:io';
import 'package:flutter/material.dart';

class FancyPage extends StatefulWidget {
  @override
  _FancyPageState createState() => _FancyPageState();
}

class _FancyPageState extends State<FancyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Fancy",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.extent(
            maxCrossAxisExtent: 250,
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: new InkResponse(
                    enableFeedback: true,
                    child: new Card(
                      color: Colors.white,
                      child: new Align(
                          alignment: Alignment.center,
                          child: new Stack(
                            children: <Widget>[
                              new Center(
                                  child: Stack(
                                alignment: Alignment.center,
                                children: <Widget>[
                                  FractionalTranslation(
                                    translation: Offset(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                          alignment:
                                              new FractionalOffset(0.0, 0.0),
                                          margin: EdgeInsets.all(5),
                                          padding: EdgeInsets.all(5),
                                          width: double.maxFinite,
                                          decoration: new BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: new Border.all(
                                                width: 1,
                                                color: Colors.transparent),
                                            color: Colors.white,
                                          ),
                                          child: new Center(
                                            child: Column(
                                              children: [
                                                new Image(
                                                    image: AssetImage(
                                                        'assets/images/fancysaree.png')),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Text('Fancy'),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Text('Price: 300'),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Text('Discount 20%'),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Text(
                                                      'Colour: peach pink'),
                                                ),
                                              ],
                                            ),
                                          )),
                                    ),
                                  ),
                                ],
                              )),
                            ],
                          )),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    child: new InkResponse(
                      enableFeedback: true,
                      child: new Card(
                        color: Colors.white,
                        child: new Align(
                            alignment: Alignment.center,
                            child: new Stack(
                              children: <Widget>[
                                new Center(
                                    child: Stack(
                                  alignment: Alignment.center,
                                  children: <Widget>[
                                    FractionalTranslation(
                                      translation: Offset(0.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                            alignment:
                                                new FractionalOffset(0.0, 0.0),
                                            margin: EdgeInsets.all(5),
                                            padding: EdgeInsets.all(5),
                                            width: double.maxFinite,
                                            decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: new Border.all(
                                                  width: 1,
                                                  color: Colors.transparent),
                                              color: Colors.white,
                                            ),
                                            child: new Center(
                                              child: Column(
                                                children: [
                                                  new Image(
                                                      image: AssetImage(
                                                          'assets/images/fancysaree.png')),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5, right: 5),
                                                    child: Text('Fancy'),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5, right: 5),
                                                    child: Text('Price: 300'),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5, right: 5),
                                                    child: Text('Discount 20%'),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5, right: 5),
                                                    child: Text(
                                                        'Colour: peach pink'),
                                                  ),
                                                ],
                                              ),
                                            )),
                                      ),
                                    ),
                                  ],
                                )),
                              ],
                            )),
                      ),
                    )),
              ),
            ],
          );
        },
      ),
    );
  }
}
