import 'dart:convert';

import 'package:apiacllingappone/screens/home/model/homemodel.dart';
import 'package:http/http.dart' as http;


class Apihelper
{

  Future<User?> relodapi()
  async {
    String Link = "https://randomuser.me/api/";

    Uri uri = Uri.parse(Link);
    var responce = await http.get(uri);
    var json = jsonDecode(responce.body);
    User u1= User.fromJson(json);
    return u1;

  }

}