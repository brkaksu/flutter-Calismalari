import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B Sayfasi";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text(
            "Navigasyon Islemleri",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text(
                    "A sayfasına git",
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ASayfasi()));
                  },
                  color: Colors.blue,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BSayfasi()));
                  },
                  child: Text("B sayfasına Git Ve Veri Gönder"),
                  color: Colors.red,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CSayfasi()));
                  },
                  child: Text("C Sayfasına git"),
                  color: Colors.purple,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.push<bool>(
                      context,
                      MaterialPageRoute(builder: (context) => DSayfasi()),
                    ).then((popOlayindanSonraGelenDeger) {
                      debugPrint(
                          "Pop işleminden sonra gelen deger: $popOlayindanSonraGelenDeger");
                    });
                  },
                  child: Text("D Sayfasına Git Ve Gelirken Veri Getir"),
                  color: Colors.pink,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => ESayfasi()));
                  },
                  child: Text("E Sayfasına git ve geri gelme"),
                  color: Colors.purple,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/FPage");
                  },
                  child: Text("F Sayfasına git"),
                  color: Colors.purple,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/Inputislemleri");
                  },
                  child: Text("İnput İşlemleri Sayfasına Git"),
                  color: Colors.purple,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/FormTextFormField");
                  },
                  child: Text("Form Işlemleri Sayfasına git"),
                  color: Colors.purple,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, "/DigerFormElemanları");
                  },
                  child: Text("Diğer Form işlemleri sayfasına git"),
                  color: Colors.purple,
                ),
              ],
            ),
          ),
      );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A sayfasi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "A SAYFASİ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenbaslikverisi;

  BSayfasi({this.gelenbaslikverisi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "B sayfasi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "gelenbaslikverisi",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CSayfasi()));
              },
              child: Text("C Sayfasına git"),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C Sayfasi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "C SAYFASİ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Geri Dön"),
              color: Colors.red,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ASayfasi()));
              },
              child: Text("A Sayfasına git"),
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "D sayfasi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "D SAYFASİ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop<bool>(context, true);
                // true ise ürün silindi
                // false ise ürün silinemedi.
              },
              child: Text("Geri Dön Ve Veri Gönder"),
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E sayfasi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "E SAYFASİ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class FSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "F Sayfasi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "F SAYFASİ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/GPage");
              },
              child: Text("G Sayfasına git"),
              color: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}

class GSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "G Sayfasi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "G SAYFASİ",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
