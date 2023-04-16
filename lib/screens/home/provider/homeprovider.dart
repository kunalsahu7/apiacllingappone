import 'package:apiacllingappone/utiils/Apicalling.dart';
import 'package:flutter/material.dart';

import '../model/homemodel.dart';

class Homeprovider extends ChangeNotifier
{
  User? user;
  Future<User?> userprovider()
  async {
    Apihelper A1 = Apihelper();
    user = await A1.relodapi();
    return user;
  }


  void refresh(){
    Apihelper apiHelper = Apihelper();
    apiHelper.relodapi();
    notifyListeners();
  }
}