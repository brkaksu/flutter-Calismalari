import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class TarihVeSaat extends StatefulWidget {
  @override
  _TarihVeSaatState createState() => _TarihVeSaatState();
}

class _TarihVeSaatState extends State<TarihVeSaat> {

  DateTime suan = DateTime.now();
  DateTime besYilOnce = DateTime(2015);
  DateTime besYilSonra = DateTime(2025);

  TimeOfDay simdikiSaat = TimeOfDay.now();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarih ve saat işmleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text("Tarih Seç"),
                color: Colors.red,
                onPressed: (){
              showDatePicker(context: context, initialDate: suan, firstDate: besYilOnce, lastDate: besYilSonra)
                  .then((value) {
                    //debugPrint(value.toString());
                    print(formatDate(value, [dd, '-' , mm, '-' , yyyy]));
              } );
            }

            ),
            RaisedButton(
                child: Text("Saat Seç"),
                color: Colors.lightBlue,
                onPressed: (){
                  showTimePicker(context: context, initialTime: simdikiSaat).then((secilenSaat) {
                    debugPrint(secilenSaat.format(context));
                  });
                }),
          ],
        ),
      ),
    );
  }
}
