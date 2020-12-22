import 'package:flutter/material.dart';

class DigerFormIslemleri extends StatefulWidget {
  @override
  _DigerFormIslemleriState createState() => _DigerFormIslemleriState();
}

class _DigerFormIslemleriState extends State<DigerFormIslemleri> {
  bool checkBoxState1 = false;
  bool checkBoxState2 = false;
  bool checkBoxState3 = false;

  String sehir = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer form islemleri"),
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body:Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            CheckboxListTile(
              value: checkBoxState1,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState1 = secildi;
                  debugPrint("deger: $secildi");
                });
              },
              activeColor: Colors.red,
              title: Text("Maydonoz"),
              secondary: Icon(Icons.fastfood_sharp),
            ),
            CheckboxListTile(
              value: checkBoxState2,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState2 = secildi;
                  debugPrint("deger: $secildi");
                });
              },
              activeColor: Colors.red,
              title: Text("Soğan"),
              secondary: Icon(Icons.fastfood_sharp),
            ),
            CheckboxListTile(
              value: checkBoxState3,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState3 = secildi;
                  debugPrint("deger: $secildi");
                });
              },
              activeColor: Colors.red,
              title: Text("Domates"),
              secondary: Icon(Icons.fastfood_sharp),
            ),
            RadioListTile<String>(
              value: "Normal Dürüm",
              groupValue: sehir,
              onChanged: (secilenSehir){
                setState(() {
                  sehir = secilenSehir;
                });
              },
              title: Text("Normal Dürüm"),
            ),
            RadioListTile<String>(
              value: "Tokat",
              groupValue: sehir,
              onChanged: (secilenSehir){
                setState(() {
                  sehir = secilenSehir;
                });
              },
              title: Text("Tokat"),
            ),
            RadioListTile<String>(
              value: "İstanbul",
              groupValue: sehir,
              onChanged: (secilenSehir){
                setState(() {
                  sehir = secilenSehir;
                });
              },
              title: Text("İstanbul"),
            ),
          ],
        ),
      ),

    );
  }
}
