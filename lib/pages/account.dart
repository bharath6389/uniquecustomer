import 'package:flutter/material.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:unique/widgets/BottombarWidget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Country State and City Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String countryValue;
  String stateValue;
  String cityValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Account",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        height: 600,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: "Enter Address"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SelectState(
              onCountryChanged: (value) {
                setState(() {
                  countryValue = value;
                });
              },
              onStateChanged: (value) {
                setState(() {
                  stateValue = value;
                });
              },
              onCityChanged: (value) {
                setState(() {
                  cityValue = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w300,
              ),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  labelText: "Enter Postal Code"),
            ),
          ),
          Spacer(),
          BottomBarWidget(
            text: "Submit",
          ),
        ]),
      ),
    );
  }
}
