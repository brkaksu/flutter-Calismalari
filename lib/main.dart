import 'package:flutter/material.dart';
import 'package:flutter_app_input/ui/form_textFormField.dart';
import 'package:flutter_app_input/ui/input_islemleri.dart';
import 'package:flutter_app_input/ui/navigasyon_islemleri.dart';



void main(){
  runApp(MaterialApp(
      title: "Flutter Dersleri",
      debugShowCheckedModeBanner: false,
      routes: {
        "/APage" : (context) => ASayfasi(),
        "/BPage" : (context) => BSayfasi(),
        "/CPage" : (context) => CSayfasi(),
        "/DPage" : (context) => DSayfasi(),
        "/EPage" : (context) => ESayfasi(),
        "/FPage" : (context) => FSayfasi(),
        "/GPage" : (context) => GSayfasi(),
        "/Inputislemleri" : (context) => Inputislemleri(),
        "/FormTextFormField" : (context) => FormTextFormField(),
      },
      theme: ThemeData(
          primarySwatch: Colors.orange
      ),
    home: NavigasyonIslemleri(),
  ));
}



