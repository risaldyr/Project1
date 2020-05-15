import 'package:flutter/material.dart';
import 'package:tugasol9/get.dart';
import 'package:tugasol9/post.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("tugas09 Risaldy Raflisyamsudin"),
        ),
        body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            RaisedButton(
              child: Text("Get data"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return GetPages();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("Post Data"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PostPages();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
      ),
    );
  }
}
