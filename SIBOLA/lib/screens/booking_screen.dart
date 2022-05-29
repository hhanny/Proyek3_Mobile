import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("halaman booking sementara"),),
      body: new Center(
        child: new IconButton(
          icon: new Icon(Icons.archive, size: 50.0,),
          onPressed: null, 
        ),
      ),
    );
  }
}