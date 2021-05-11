import 'dart:io';
import 'package:flutter/material.dart';

class KurthiPage extends StatefulWidget {
  @override
  _KurthiPageState createState() => _KurthiPageState();
}

class _KurthiPageState extends State<KurthiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Kurthi",
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
                                                        'assets/images/kurthi.png')),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5, right: 5),
                                                  child: Text('Kurthi'),
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
                                                  child: Text('Colour: Orange'),
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
                                                          'assets/images/kurthi.png')),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 5, right: 5),
                                                    child: Text('Kurthi'),
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
                                                    child:
                                                        Text('Colour: Orange'),
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
