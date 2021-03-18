import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String valor;
  //Construtor - Recebe parametro
  //Paramentro Opcional -  TelaSecundaria({this.valor});
  TelaSecundaria({this.valor});

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  //Acessar o valor

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
              //Recuperar
              //Tenho que recuperar com o atributo widget.
              "Segunda Tela. Valor passado: ${widget.valor}",
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
