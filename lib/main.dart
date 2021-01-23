import 'package:flutter/material.dart';
import 'package:flutter_app_input/ui/date_time_picker.dart';
import 'package:flutter_app_input/ui/siparis_tercih_sayfasi.dart';
import 'package:flutter_app_input/ui/form_selection_ogeleri.dart';
import 'package:flutter_app_input/ui/form_textFormField.dart';
import 'package:flutter_app_input/ui/input_islemleri.dart';
import 'package:flutter_app_input/ui/navigasyon_islemleri.dart';
import 'package:flutter_app_input/ui/stepper_sayfasi.dart';
import 'package:flutter_app_input/ui/tarih_ve_saat.dart';



void main(){
  runApp(MaterialApp(
      title: "Flutter Dersleri",
      debugShowCheckedModeBanner: false,
      routes: {
        "/Inputislemleri" : (context) => Inputislemleri(),
        "/FormTextFormField" : (context) => FormTextFormField(),
        "/SiparisTercih" : (context) => SiparisTercihSayfasi(),
        "/FormSelectionOgeleri" : (context) => FormSelectionOgeleri(),
        "/DateTimePicker" : (context) => DateTimePicker(),
        "/TarihVeSaat" : (context) => TarihVeSaat(),
        "/Stepper" : (context) => StepperSinifi(),
      },
      theme: ThemeData(
          primarySwatch: Colors.orange
      ),
    home: NavigasyonIslemleri(),
  ));
}



