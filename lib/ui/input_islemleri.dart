import 'package:flutter/material.dart';


class Inputislemleri extends StatefulWidget {
  @override
  _InputislemleriState createState() => _InputislemleriState();
}

class _InputislemleriState extends State<Inputislemleri> {

  TextEditingController textController1;
  FocusNode _focusNode;
  FocusNode _focusNode1;
  String girilendeger ="";
  int maxLine =1;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode1 = FocusNode();
    textController1 = TextEditingController(text: "Varsayılan");
    _focusNode.addListener(() {
      setState(() {
        if(_focusNode.hasFocus){
          maxLine = 3;
        }else{
          maxLine = 1;
        }
      });

    });
    }
  @override
  void dispose() {
    _focusNode.dispose();
    textController1.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İnput işlemleri"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag:"aa" ,
            onPressed: (){},
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            heroTag: "bb",
            backgroundColor: Colors.pink,
            onPressed:(){
              debugPrint(textController1.text);
            },
            child: Icon(Icons.edit),
          ),
        ],
      ),
      body: ListView(
       children: <Widget>[
         Padding(
           padding: EdgeInsets.all(20.0),
           child: TextField(
             controller: textController1,
             focusNode: _focusNode,
             decoration: InputDecoration(
               hintText: "Adınızı Giriniz:",
               labelText: "Adınız",
               border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
               icon: Icon(Icons.edit),
               prefixIcon: Icon(Icons.done),
               suffixIcon: Icon(Icons.add),
               filled: true,
               fillColor: Colors.red.shade50,
             ),
             cursorColor: Colors.blue,
           ),
         ),
         Padding(
           padding: EdgeInsets.all(20.0),
           child: TextField(
             focusNode: _focusNode,
             decoration: InputDecoration(
               hintText: "Adınızı Giriniz:",
               labelText: "Adınız",
               border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
               icon: Icon(Icons.edit),
               prefixIcon: Icon(Icons.done),
               suffixIcon: Icon(Icons.add),
               filled: true,
               fillColor: Colors.red.shade50,
             ),
             cursorColor: Colors.blue,
           ),
         ),
         Container(
           alignment: Alignment.center,
           margin: EdgeInsets.all(10.0),
           width: double.infinity,
           height: 200,
           color: Colors.teal.shade400,
           child: Text(textController1.text),
           ),
        ],
      ),
    );
  }
}
