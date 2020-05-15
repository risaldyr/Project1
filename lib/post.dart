
import 'package:flutter/material.dart';
import 'package:tugasol9/post_result_model.dart';


class PostPages extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PostPages> {
  PostResult postResult = null;
  final text1 = TextEditingController();
  final text2 = TextEditingController();
  
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
              new TextField(controller: text2),
              RaisedButton(
                onPressed: () {
                  PostResult.connectToAPI(text1.text, text2.text).then((value) {
                    postResult = value;
                    setState(() {});
                  });
                },
                child: Text("Post"),
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
