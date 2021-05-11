import 'dart:io';
import 'package:flutter/material.dart';

class SilkPage extends StatefulWidget {
  @override
  _SilkPageState createState() => _SilkPageState();
}

class _SilkPageState extends State<SilkPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Silk",
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
                                                        'assets/images/silksaree.png')),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Text('Silk Saree'),
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
                                                      'Colour: Royal pink'),
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
                                                          'assets/images/silksaree.png')),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5, right: 5),
                                                    child: Text('Silk Saree'),
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
                                                        'Colour: royal pink'),
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
