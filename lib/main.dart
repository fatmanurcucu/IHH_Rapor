import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_app/birimler.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ÜYE GİRİŞİ',
      theme: ThemeData(
          primarySwatch: Colors.green, //ThemeData
          accentColor: Colors.white70),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "ÜYE GİRİŞİ",
              style: TextStyle(fontSize: 20.0, color: Colors.white70),
            ),
          ),
          body: LoginHome()),
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/birimler": (BuildContext context) => Birimler()
};

class LoginHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LoginHome(context);
  }
}

Widget _LoginHome(BuildContext context) {
  final emailField = TextField(
    obscureText: false,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Kullanıcı Adı",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final passwordField = TextField(
    obscureText: true,
    decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Parola",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
  );

  final loginButton = Material(
    elevation: 5.0,
    borderRadius: BorderRadius.circular(30.0),
    color: Colors.green,
    child: MaterialButton(
      minWidth: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
      onPressed: () {
        //  RaisedButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Birimler(),
          ),
        );
        //  });
      },
      child: Text(
        "Giriş Yap",
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontStyle: FontStyle.normal),
      ),
    ),
  );

  return Center(
    child: Container(
      child: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/image/kapak.jpg"),
            SizedBox(height: 10.0),
            emailField,
            SizedBox(height: 10.0),
            passwordField,
            SizedBox(height: 15.0),
            loginButton,
          ],
        ),
      ),
    ),
  );
}