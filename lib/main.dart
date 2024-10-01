 import 'package:flutter/material.dart';
import 'package:weather_app/ui/detail_page.dart';
import 'package:weather_app/ui/home_page.dart';

void main(){
  runApp(MainApp());
 }

 class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPage(),);
  }
 }