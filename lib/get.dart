import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:tugasol9/user_model.dart';
import 'package:google_fonts/google_fonts.dart';

class GetPages extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GetPages> {
  User user = null;
  final text1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tugasol08_Risaldy_20170801340"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                controller: text1,
              ),
              Text(
                (user != null) ? user.id + " > " + user.name : "Tidak ada data",
                textAlign: TextAlign.center,
                style: GoogleFonts.gloriaHallelujah(
                    textStyle: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 20,
                        letterSpacing: 6,
                        color: Colors.blue)),
              ),
              RaisedButton(
                onPressed: () {
                  User.connectToAPI(text1.text).then((value) {
                    user = value;
                    setState(() {});
                  });
                },
                child: Text("Get"),
              ),
              RaisedButton(
                child: Text("Kembali"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
