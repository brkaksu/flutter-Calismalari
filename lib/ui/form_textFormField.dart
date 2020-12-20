import 'package:flutter/material.dart';

class FormTextFormField extends StatefulWidget {
  @override
  _FormTextFormFieldState createState() => _FormTextFormFieldState();
}

class _FormTextFormFieldState extends State<FormTextFormField> {
  String _adSoyad, _sifre, _emailAdres;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        accentColor: Colors.purple,
        errorColor: Colors.purpleAccent,
        hintColor: Colors.blue,
        primaryColor: Colors.red,
      ),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          child: Icon(Icons.save),
        ),
        appBar: AppBar(
          title: Text("Form ve Text Form Field"),
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              children: <Widget>[
                // adTextBox
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_circle),
                    hintText: "Adınız Ve Soyadınız",
                    labelText: "Ad Soyad",
                    border: OutlineInputBorder(),
                    //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
                    //focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.blue, width: 2)),
                  ),
                  validator: (String girilenVeri){
                    if (girilenVeri.length < 6){
                      return "Lütfen adınızı soyadınızı tam giriniz";
                    }else return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                //eMailTextbox
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "E mail adresiniz",
                    labelText: "E mail",
                    border: OutlineInputBorder(),
                  ),
                  validator: (String girilenVeri){
                    if (!(girilenVeri.contains("@gmail.com")|| girilenVeri.contains("@hotmail.com") || girilenVeri.contains("@outlook.com"))){
                      return "Lütfen geçerli bir e mail giriniz";
                    }else return null;
                  },
                ),
                SizedBox(height: 10,),
                //sifreTextBox
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Şifrenizi Girin",
                    labelText: "Şifre",
                    border: OutlineInputBorder(),
                  ),

                ),
                SizedBox(height: 10,),
                // kaydetButonu
                RaisedButton.icon(
                  icon: Icon(Icons.save),
                  label: Text("KAYDET"),
                  onPressed: () {
                    _girisBilgileriniOnayla();
                  },
                  color: Colors.blueAccent,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _girisBilgileriniOnayla(){

  }
}
