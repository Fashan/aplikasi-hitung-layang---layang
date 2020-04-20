import 'package:flutter/material.dart';
import 'penghitungan.dart';
import 'profile.dart';
class input_data extends StatefulWidget {
  @override
  _input_dataState createState() => _input_dataState();
}

class _input_dataState extends State<input_data> {
  int d1 = 0;
  int d2 = 0;
  int a = 0;
  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        leading: Icon(Icons.apps),
        title: Text("Layang - Layang",style: TextStyle(fontSize: 30,fontFamily: 'Lobster'),),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.contact_mail),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
            },
          ),
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(20),
            child: Image.asset('images/rumus.PNG',),
            decoration: BoxDecoration(
                border: Border.all(
                    width: 5
                )
            ),

          ),
          Text("Menghitung Luas",style: TextStyle(fontSize: 40,fontFamily: 'Merienda'),textAlign: TextAlign.center,),
          Container(
            margin: EdgeInsets.only(top:20,left: 100,right: 100),
            height: 50,
            child:  TextField(
              onChanged: (txt) {
                setState(() {
                  d1 = int.parse(txt);
                });
              },
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontFamily: 'Comfortaa'),
              decoration:
              InputDecoration(filled: true,
                  hintText: 'inputkan d1',
                  suffix: Text('cm'),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),

            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20, left: 100,right: 100),
            height: 50,
            child:  TextField(
              onChanged: (txt) {
                setState(() {
                  d2 = int.parse(txt);
                });
              },
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontFamily: 'Comfortaa'),
              decoration:
              InputDecoration(filled: true,
                  hintText: 'inputkan d2',
                  suffix: Text('cm'),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),

            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40)),
          Text("Menghitung Keliling",style: TextStyle(fontSize: 40,fontFamily: 'Merienda'),textAlign: TextAlign.center,),
          Container(
            margin: EdgeInsets.only(top:20,left: 100,right: 100),
            height: 50,
            child:  TextField(
              onChanged: (txt) {
                setState(() {
                  a = int.parse(txt);
                });
              },
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontFamily: 'Comfortaa' ),
              decoration:
              InputDecoration(filled: true,
                  hintText: 'inputkan a',
                  suffix: Text('cm'),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),

            ),
          ),
          Container(
            margin: EdgeInsets.only(top:20, left: 100,right: 100),
            height: 50,
            child:  TextField(
              onChanged: (txt) {
                setState(() {
                  c = int.parse(txt);
                });
              },
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20,fontFamily: 'Comfortaa'),
              decoration:
              InputDecoration(filled: true,
                  hintText: 'inputkan c',
                  suffix: Text('cm'),
                  fillColor: Colors.white,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),

            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50,left: 100,right: 100),
            child: RaisedButton(
              color: Colors.green,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => pengolahan_data(
                      jumlah_a: a,
                      jumlah_c: c,
                      jumlah_d1: d1,
                      jumlah_d2: d2,
                    ))
                );
              },
              child: Text("Hitung"),
            ),

          ),
          Padding(padding: EdgeInsets.only(bottom: 50)),

        ],
      ),
    );
  }
}
