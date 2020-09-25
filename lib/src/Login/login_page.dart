import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nature_app/src/routes/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 60, left: 10, right: 10),
          child: Column(
            children: [
              Container(  // Logo image
                child: Image(
                  image: AssetImage('assets/logo_loginNature.png'),
                  height: 200,
                  width: 240,
                  fit: BoxFit.fill,
                ),
              ),
              Container(  // Company name
                height: 100,
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 30),
                child: Text(
                  "Company name",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont('Tinos', color:Color(0xFF3aaf46), fontWeight: FontWeight.bold, fontSize: 45),
                ),
              ),
              Container(  // Fields: E-mail and Password
                margin: EdgeInsets.only(
                  bottom: 30,
                  right: 25,
                  left: 25,
                ),
                child: Form(
                  child: Column(
                    children: [
                      TextField(  // E-mail Field
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        decoration: InputDecoration(
                          isCollapsed: true,
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.all(10),
                          labelStyle: TextStyle(
                            letterSpacing: 2,
                            color: Colors.black38,
                          ),
                          hintStyle: TextStyle(color: Colors.black54),
                          labelText: 'E-mail',
                          suffixText: '@company.com',
                        ),
                      ),
                      SizedBox(height: 20),
                      TextField(  // Password Field
                        style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                        obscureText: true,
                        decoration: InputDecoration(
                          isCollapsed: true,
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(
                              left: 10, bottom: 10, right: 0, top: 10),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            letterSpacing: 2,
                            color: Colors.black38,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              RaisedButton( // Login Button
                onPressed: () {
                  // Do an appropriate verification and save the login
                  Navigator.of(context).pushNamedAndRemoveUntil(
        AppRoutes.HOME, (Route<dynamic> route) => false);
                },
                elevation: 7,
                padding: EdgeInsets.symmetric(horizontal: 35),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Color(0xFFcbe7ce),
                  ),
                ),
                color: Color(0xFF3aaf46),
              ),
              SizedBox(
                height: 20,
              ),
              Column( // Sing up and Recover password
                children: [
                  FlatButton( // Recover password
                    visualDensity: VisualDensity(vertical: -4),
                    onPressed: () {},
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(
                        wordSpacing: 3,
                        letterSpacing: 5,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  FlatButton( // Create account
                    visualDensity: VisualDensity(vertical: -4),
                    onPressed: () {},
                    padding: EdgeInsets.all(0),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        wordSpacing: 3,
                        letterSpacing: 5,
                        color: Colors.black38,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
