import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unique/otp.dart';
import 'package:unique/widgets/BottombarWidget.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _ncontroller = TextEditingController();
  TextEditingController _econtroller = TextEditingController();
  TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Center(
            child: Text(
          "Unique",
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 80.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Full Name';
                    }
                    return null;
                  },
                  onSaved: (val) => _ncontroller,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter Full Name",
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  controller: _ncontroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Email Address';
                    }
                    return null;
                  },
                  onSaved: (val) => _econtroller,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.mail, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter Email Address",
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                  controller: _econtroller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Phone Number';
                    }
                    return null;
                  },
                  onSaved: (val) => _controller,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 20, right: 15),
                      child: Icon(Icons.phone, color: Colors.black),
                    ),
                    contentPadding: EdgeInsets.all(18),
                    labelText: "Enter Phone Number",
                    prefix: Padding(
                      padding: EdgeInsets.all(4),
                      child: Text('+91'),
                    ),
                  ),
                  maxLength: 10,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  controller: _controller,
                ),
              ),
              Spacer(),
              BottomBarWidget(
                  text: "Verify",
                  onTap: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Otppage()));
                    }
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
