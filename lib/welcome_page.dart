import 'package:flutter/material.dart';
import 'package:flutter_team11/login_page.dart';
import 'package:flutter_team11/signup_page.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                height: 200.0,
                child: Image.asset('assets/benesse.jpeg')//Image.asset('assets/benesse.jpeg'),
            ),
            SizedBox(
              height: 48.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () => _onLogIn(),
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                      'Log In', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900, color: Colors.white)
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () => _onSignUp(), //変更
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                      'Sign Up', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w900, color: Colors.white)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _onLogIn() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => LoginPage(),
      ),
    );
  }

  _onSignUp() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => SignupPage(),
      ),
    );
  }
}
