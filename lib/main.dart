import 'package:flutter/material.dart';
import 'package:flutter_json/local_json.dart';
import 'package:flutter_json/remote_api.dart';

void main() => runApp(MyApp());
/*
class Ogrenci{
  int id;
  String isim;

  Ogrenci(this.id,this.isim);

  @override
  String toString() {
    // TODO: implement toString
    return "Adı: $isim id: $id";
  }

  factory Ogrenci.mapiNesneyeDonustur(Map<String,dynamic> gelenMap){
    return Ogrenci(gelenMap["id"],gelenMap["isim"]);
  }

}
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
/*
    Ogrenci emre = new Ogrenci(10, "emre");
    debugPrint(emre.toString());

    Map<String,dynamic> hasanMap = {"id" : 15,"isim " : "Hasan"};
    debugPrint("Adı : "+ hasanMap["isim"] + " id: " + hasanMap["id"].toString());

    Ogrenci yeni = Ogrenci.mapiNesneyeDonustur(hasanMap);
    debugPrint(yeni.toString());
*/
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Json ve Api")),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
                child: Text("local Json"),color: Colors.green,onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => LocalJsonKullanimi()));
            }),
            RaisedButton(
                child: Text("Remote Api"),color: Colors.green,onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => RemoteApiKullanimi()));
            }),
          ],
        ),
      ),
    );
  }
}
