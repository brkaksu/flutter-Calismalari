import 'package:flutter/material.dart';


class StepperSinifi extends StatefulWidget {
  @override
  _StepperSinifi createState() => _StepperSinifi();
}

class _StepperSinifi extends State<StepperSinifi> {
  String cinsiyetTercihi ="";
  String icerikTercihi ="";
  List <Step> tumStepler;
  int _aktifStep = 0;
  @override
  void initState() {
    super.initState();
    tumStepler = _tumStepler();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: tumStepler,
          currentStep: _aktifStep,
          onStepContinue: (){
            setState(() {
              if(_aktifStep <  tumStepler.length -1){
                _aktifStep++;
              }
            });
          },
          onStepCancel: (){
            setState(() {
              if(_aktifStep > 0){
                _aktifStep--;
              }else{
                _aktifStep = 0;
              }
            });
          },
          onStepTapped: (tiklanilanStep){
            setState(() {
              _aktifStep = tiklanilanStep;
            });
          },
        ),

      ),
    );
  }

  List<Step> _tumStepler() {
    List <Step> stepler = [
    Step(
      title: Text("User Name Giriniz:"),
      content: TextFormField(
        decoration: InputDecoration(
          hoverColor: Colors.purpleAccent,
            filled: true,
            labelText: "User Name",
            hintText: "UserNameText",
            border: OutlineInputBorder()),
          validator: (girilendeger){
            if(girilendeger.length < 6){
              return "Geçerli bir user name giriniz";
            }else return null;
          },
      ),
      subtitle: Text("User Name alt başlık"),
      state: StepState.complete,
      isActive: true,
    ),
    Step(
      title: Text("E-mail Giriniz:"),
      content: TextFormField(
        validator: (girilendeger){
          if(girilendeger.length < 6 && girilendeger.contains("@")){
            return "Geçerli bir e-mail adresi giriniz";
          }else{
            return null;
          }
        },
        decoration: InputDecoration(
            labelText: "E-mail Label",
            hintText: "E -mail Text",
            border: OutlineInputBorder()),
      ),
      subtitle: Text("E-mail alt başlık"),
      state: StepState.editing,
      isActive: true,
    ),
    Step(
      title: Text("Sifre Giriniz:"),
      subtitle: Text("Sifre alt başlık"),
      isActive: true,
      state: StepState.error,
      content: TextFormField(
        decoration: InputDecoration(
            labelText: "Sifre Label",
            hintText: "Sifre text",
            border: OutlineInputBorder()),
      ),
    ),
    ];
    return stepler;
  }
}
