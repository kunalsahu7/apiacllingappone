import 'package:apiacllingappone/screens/home/provider/homeprovider.dart';
import 'package:apiacllingappone/screens/home/view/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => Homescreen(),
        },
      ),
    ),
  );
}