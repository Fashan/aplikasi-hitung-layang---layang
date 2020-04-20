import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input.dart';

class profile extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(


        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => input_data()));
          },
        ),
        title: Text("Profile",style: TextStyle(fontSize: 30,fontFamily: 'Lobster'),),
        centerTitle: true,
      ),
      body: Homeprofile(),
    );
  }
}

class Homeprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(

            padding: EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset('images/profile.jpeg',width: 150, height: 150,)
                    ),
                    Text(
                      "Fashan Saraya",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        height: 2.0,
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Box(
                              "1815051070", Icons.book, Colors.black),
                          Box(
                              "PTI 4A", Icons.book, Colors.black),
                          Box("Undiksha", Icons.local_post_office,
                              Colors.black),
                          Box("Penyabangan", Icons.directions,
                              Colors.black),

                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ))
      ],
    );
  }
}

//container dari kotak yang berisi icon
class Box extends StatelessWidget {

  final String isi;
  final IconData icon;
  final Color warna;

  const Box(this.isi, this.icon, this.warna);

  @override
  Widget build(BuildContext context) {
    return
      Container(
          color: Colors.blue[400],
          margin: EdgeInsets.only(top: 24),
          width: 250,
          height: 100,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 20, left: 30),
                child: Icon(
                  icon,
                  size: 40,
                  color: warna,
                ),
              ),


              TextBox(isi),
            ],
          )

      );
  }
}

//untuk text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;

  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        isi,
        style: TextStyle(height: 1.3, fontSize: 18, color: Colors.white),
      ),
    );
  }
}
