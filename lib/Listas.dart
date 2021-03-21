import 'package:flutter/material.dart';

class Listas extends StatefulWidget {
  @override
  _ListasState createState() => _ListasState();
}

class _ListasState extends State<Listas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: Text("Listas no Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        
      ),
    );
  }
}
