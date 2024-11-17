 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domen/api_helper.dart';
import 'package:weather_app/ui/bloc/weather_bloc.dart';
import 'package:weather_app/ui/home_page.dart';

void main(){
  runApp(
      
     BlocProvider (create: (context) => WeatherBloc(apiHelper: ApiHelper()),
      child: MainApp()));
 }

 class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),);
  }
 }