import 'package:flutter/material.dart';
import 'dart:math';

class pengolahan_data extends StatelessWidget {
  pengolahan_data({
    @required this.jumlah_d1,
    @required this.jumlah_a,
    this.jumlah_d2,
    this.jumlah_c,
  });
  final int jumlah_d1;
  final int jumlah_d2;
  final int jumlah_a;
  final int jumlah_c;

  @override

  Widget build(BuildContext context) {
    double luas = (jumlah_d1 * jumlah_d2) /2;
    int keliling = 2 * (jumlah_a + jumlah_c);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.apps),
        title: Text("Hasil Hitung",style: TextStyle(fontFamily: 'Lobster',fontSize: 30),),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[

          Container(
            margin: EdgeInsets.only(top: 20),
            child:  Text("Hasil Perhitungan           "
                "                Luas dan Keliling",style: TextStyle(fontSize: 40,fontFamily: 'Merienda'),textAlign: TextAlign.center,),
          ),
          Container(
            color: Colors.green[600],
            margin: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Container(

                  margin: EdgeInsets.only(top: 50),
                  padding: EdgeInsets.only(left: 50,right: 50),

                  child: Column(
                    children: <Widget>[
                      Text("Luas: ",style: TextStyle(fontSize: 50,fontFamily: 'Merienda'),),
                      Text("${luas} cm2",style: TextStyle(fontSize: 30),),

                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 10)
                  ),
                ),
                Container(

                  margin: EdgeInsets.only(top: 50,bottom: 50),
                  padding: EdgeInsets.only(left: 35,right: 35),

                  child: Column(
                    children: <Widget>[
                      Text("Keliling: ",style: TextStyle(fontSize: 50,fontFamily: 'Merienda'),),
                      Text("${keliling} cm2",style: TextStyle(fontSize: 30),),

                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      border: Border.all(width: 10)
                  ),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
