import 'package:flutter/material.dart';
import 'package:young_activist/home.dart';

void main() => runApp(MaterialApp(
    home : LogScreen(),
    routes: {
      '/home': (context) => home_page(),
    }
));

class LogScreen extends StatefulWidget {
  @override
  _LogScreenState createState() => _LogScreenState();
}

class _LogScreenState extends State<LogScreen> {
  String username;
  String password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Username',
          labelStyle: TextStyle(fontSize: 25)),

      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        username = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: TextStyle(fontSize: 25) ),
      keyboardType: TextInputType.visiblePassword,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[350],

        body : Padding(
          padding: EdgeInsets.fromLTRB(30.0, 50.0, 50.0, 60.0),
          child: SafeArea(

              child: SingleChildScrollView(
                  child : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.0),
                              border: Border.all(color: Colors.grey[300])),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image.asset(
                              'assets/ya_logo.jpg',
                              fit: BoxFit.fill,
                              width: 200.0,
                              height: 200.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox( height: 20.0),
                      Text(
                          "WELCOME",
                          style : TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 28.0,
                            //fontWeight: FontWeight.bold
                          )
                      ),
                      Form(
                        key: _formKey,
                        child: Column(

                          children: <Widget>[
                            _buildName(),
                            _buildPassword(),
                            SizedBox(height: 100),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(color: Colors.grey[300])),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),

                                ),
                              ),
                            ),
                            RaisedButton(
                              child: Text(
                                'Sign In',
                                style: TextStyle(color: Colors.blue, fontSize: 16),
                              ),
                              onPressed: () {
                                if (!_formKey.currentState.validate()) {
                                  return;
                                }

                                _formKey.currentState.save();

                                print(username);
                                print(password);
                                Navigator.pushNamed(context, '/home');

                                //Send to API
                              },
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              )
          ),
        )

    );

  }
}
