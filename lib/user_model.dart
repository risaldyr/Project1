import 'dart:convert';

import 'package:http/http.dart' as http;

class User
{
  String id;
  String name;

  User({this.id, this.name});

  factory User.createUser(Map<String, dynamic> object)
  {
    return User(
        id: object['_id'].toString(),
        name: object['name'] + " " + object['job']
    );
  }

  static Future<User> connectToAPI(String _id) async
  {
    String apiURL = "https://thawing-stream-50060.herokuapp.com/api/users/" + _id;

    var apiResult = await http.get(apiURL);
    var jsonObject = json.decode(apiResult.body);

    return User.createUser(jsonObject);
  }
}
