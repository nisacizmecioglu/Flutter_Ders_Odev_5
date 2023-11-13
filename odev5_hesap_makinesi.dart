import 'package:flutter/material.dart';

class HesapMakinesi extends StatefulWidget {
  const HesapMakinesi({super.key});

  @override
  State<HesapMakinesi> createState() => _HesapMakinesiState();
}

class _HesapMakinesiState extends State<HesapMakinesi> {
  String sonuc = "";
  int toplam = 0;
  String deger1 = "0";
  //int? deger2 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hesap Makinesi"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(sonuc, style: TextStyle(fontSize: 24),),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "$sonuc + ";
                    toplam = toplam + int.parse(deger1);
                    deger1 = "0";
                  });
                }, child: const Text("+")),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}1";
                    if(deger1 == "0"){
                      deger1 = "1";
                    }
                    else{
                      deger1 = "${deger1}1";
                    }
                  });
                }, child: const Text("1")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}2";
                    if(deger1 == "0"){
                      deger1 = "2";
                    }
                    else{
                      deger1 = "${deger1}2";
                    }
                  });
                }, child: const Text("2")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}3";
                    if(deger1 == "0"){
                      deger1 = "3";
                    }
                    else{
                      deger1 = "${deger1}3";
                    }
                  });
                }, child: const Text("3")),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}4";
                    if(deger1 == "0"){
                      deger1 = "4";
                    }
                    else{
                      deger1 = "${deger1}4";
                    }
                  });
                }, child: const Text("4")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}5";
                    if(deger1 == "0"){
                      deger1 = "5";
                    }
                    else{
                      deger1 = "${deger1}5";
                    }
                  });
                }, child: const Text("5")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}6";
                    if(deger1 == "0"){
                      deger1 = "6";
                    }
                    else{
                      deger1 = "${deger1}6";
                    }
                  });
                }, child: const Text("6")),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}7";
                    if(deger1 == "0"){
                      deger1 = "7";
                    }
                    else{
                      deger1 = "${deger1}7";
                    }
                  });
                }, child: const Text("7")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}8";
                    if(deger1 == "0"){
                      deger1 = "8";
                    }
                    else{
                      deger1 = "${deger1}8";
                    }
                  });
                }, child: const Text("8")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}9";
                    if(deger1 == "0"){
                      deger1 = "9";
                    }
                    else{
                      deger1 = "${deger1}9";
                    }
                  });
                }, child: const Text("9")),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "${sonuc}0";
                    if(deger1 == "0"){
                      deger1 = "0";
                    }
                    else{
                      deger1 = "${deger1}0";
                    }
                  });
                }, child: const Text("0")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    sonuc = "";
                    deger1 = "0";
                    toplam = 0;
                  });
                }, child: const Text("AC")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    toplam = toplam + int.parse(deger1);
                    sonuc = "$toplam";
                    deger1 = "0";
                  });
                }, child: const Text("=")),
              ],
            ),
          ],
        ),

      ),
    );
  }
}
