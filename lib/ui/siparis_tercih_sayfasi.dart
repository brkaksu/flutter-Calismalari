
import 'package:flutter/material.dart';

class SiparisTercihSayfasi extends StatefulWidget {
  @override
  _SiparisTercihSayfasiState createState() => _SiparisTercihSayfasiState();
}

class _SiparisTercihSayfasiState extends State<SiparisTercihSayfasi> {
  bool checkBoxState1 = false;
  bool checkBoxState2 = false;
  bool checkBoxState3 = false;
  bool switchState = false;

  String cesit = "";
  double sliderDeger = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer form islemleri"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            // Baslık
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              alignment: Alignment.center,
              child: Text(
                "Lütfen Menü Seçiminizi Yapınız",
                style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            // Menü Secimi
            Container(
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
                children: <Widget>[
                  RadioListTile<String>(
                    activeColor: Colors.pink,
                    value: "Normal",
                    groupValue: cesit,
                    onChanged: (secim) {
                      setState(() {
                        cesit = secim;
                      });
                    },
                    title: Text("Normal Dürüm 13,90 ₺"),
                  ),
                  RadioListTile<String>(
                    value: "Zurna ",
                    groupValue: cesit,
                    onChanged: (secim) {
                      setState(() {
                        cesit = secim;
                        debugPrint(cesit);
                      });
                    },
                    title: Text("Zurna Dürüm 16,90₺"),
                  ),
                  RadioListTile<String>(
                    value: "Porsiyon",
                    groupValue: cesit,
                    onChanged: (secim) {
                      setState(() {
                        cesit = secim;
                      });
                    },
                    title: Text("Porsiyon 21,90₺"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
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
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
                  color: Colors.teal,
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
              child: Column(
                children: <Widget>[
                  RadioListTile<String>(
                    value: "Kapıda Öde",
                    groupValue: cesit,
                    onChanged: (secim) {
                      setState(() {
                        cesit = secim;
                      });
                    },
                    title: Text("Kapıda Öde"),
                  ),
                  RadioListTile<String>(
                    value: "Kredi Kartı ile öde",
                    groupValue: cesit,
                    onChanged: (secim) {
                      setState(() {
                        cesit = secim;
                      });
                    },
                    title: Text("Kredi Kartı ile öde"),
                  ),
                ],
              ),
            ),

            /*SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  switchState = deger;
                });
              },
              title: Text("Kapıda Öde / Online Öde"),
              activeColor: Colors.green,
            ),*/
            Padding(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Colors.red,
                child: Text("Siparişi ver"),
                onPressed: (){},
              ),
            ),
            Slider(
              min: 10,
              max: 20,
              divisions: 20,
              label: sliderDeger.toString(),
              value: sliderDeger, onChanged: (yenideger){
              setState(() {
                sliderDeger = yenideger;
              });
            },

            ),
            
            DropdownButton<String>(
              items:[
                DropdownMenuItem(child: Container(child: Text("Maydonoz"),)),
                DropdownMenuItem(child: Container(child: Text("Domates"),)),
                DropdownMenuItem(child: Container(child: Text("Soğan"),)),
              ],
              onChanged: (String secilen){

              },
            ),
          ],
        ),
      ),
    );
  }
}
