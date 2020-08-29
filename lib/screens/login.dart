import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class LoginApp extends StatefulWidget {
  @override
  _LoginAppState createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: LogUser(),
          ),
        ),
        onWillPop: () {
          SystemNavigator.pop();
          return Future.value(false);
        });
  }
}

class LogUser extends StatefulWidget {
  @override
  _LogUserState createState() => _LogUserState();
}

class _LogUserState extends State<LogUser> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                  child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Center(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text('Enter your mobile number'),
                ),
              )),
              Center(
                child: Card(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      side: BorderSide(width: 0.5, color: Colors.black)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                    child: Row(
                      children: [
                        Expanded(
                          child: new TextFormField(
                            initialValue: '+91',
                            enabled: false,
                            decoration: InputDecoration(
                              filled: false,
                              hintText: "Country code",
                            ),
                          ),
                          flex: 2,
                        ),
                        Container(
                            height: 40,
                            width: 20,
                            child: VerticalDivider(color: Colors.black)),
                        Expanded(
                          child: new TextFormField(
                            maxLength: 10,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              counterText: "",
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              filled: false,
                              hintText: "Mobile number",
                            ),
                            onSaved: (String value) {},
                          ),
                          flex: 5,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: CupertinoButton(
                    onPressed: () {},
                    color: Color(0xFF0D5EA3),
                    child: Text("GET OTP")),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Image.asset('images/login.jpg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
