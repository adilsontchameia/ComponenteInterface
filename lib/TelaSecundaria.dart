import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String valor;
  //Construtor - Recebe parametro
  TelaSecundaria(this.valor);

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Secundaria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            Text(
              "Secunda Tela",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green),
            )
          ],
        ),
      ),
    );
  }
}
