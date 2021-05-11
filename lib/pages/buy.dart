import 'package:flutter/material.dart';

class Buypage extends StatefulWidget {
  @override
  _BuypageState createState() => _BuypageState();
}

class _BuypageState extends State<Buypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Buy Again",
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
