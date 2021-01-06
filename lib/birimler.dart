import 'package:flutter/material.dart';
import 'package:flutter_app/birim_yardimcilar.dart';
import 'package:flutter_app/inputs.dart';

class Birim {
  String isim;
  Function navigation;

  Birim({this.isim, this.navigation});
}


class Birimler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Birim> birimler = [
      Birim(
          isim: "ARAMA KURTARMA",
          navigation: () {
            Navigator.push(context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(
          isim: "DAĞITIM BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "GENÇ İHH",
          navigation: () {
            Navigator.push(context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "İLÇELER BİRİMİ",
          navigation: () {
            Navigator.push(context,  MaterialPageRoute( builder: (context) => Inputs()));

          }),


      Birim(isim:
      "KADIN KOLLARI",
          navigation: () {
            Navigator.push(context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "KAYIT BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "LOJİSTİK",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "MESLEKİ EĞİTİM",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "MİSAFİR BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));

          }),


      Birim(isim:
      "MÜCAHİR BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "MUHASEBE BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));

          }),


      Birim(isim:
      "TANITIM BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));

          }),


      Birim(isim:
      "TERCÜMANLIK BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "EĞİTİM BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "TESPİT",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),


      Birim(isim:
      "UDEF",
          navigation: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Inputs()));
          }),


      Birim(isim:
      "YETİM BİRİMİ",
          navigation: () {
            Navigator.push(
                context,  MaterialPageRoute( builder: (context) => Inputs()));
          }),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Birimler')),
      body: Padding(
        padding: EdgeInsets.all(33.0),
        child: ListView.builder(
          physics: ClampingScrollPhysics(),
          itemCount: birimler.length,
          itemBuilder: (BuildContext context, int pozisyon) {
            return GestureDetector(
                child: Birims(
                  birim: birimler[pozisyon].isim,
                ),
                onTap: birimler[pozisyon].navigation);
          },
        ),
      ),
    );
  }
}