import 'package:flutter/material.dart';

class Birimlersayfasi extends StatefulWidget{

  uygulama2 createState() => uygulama2();

}
class uygulama2 extends State<Birimlersayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white70),),
      ),

      body: Column(
        children: <Widget>[
          RaisedButton(child:
          Text("Birimler sayfasına git"),
            color: Colors.green,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Birimlersayfasi()),);
            },)
        ],

      ),
    );
  }
}