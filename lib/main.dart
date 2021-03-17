import 'package:alcool_gasolina/TelaSecundaria.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TelaPrincipal()));
}

class TelaPrincipal extends StatefulWidget {
  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela Principal"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          children: [
            RaisedButton(
              child: Text("Ir Para Segunda Tela"),
              padding: EdgeInsets.all(20),
              onPressed: () {
                //Abrir outra tela
                //Objeto Navigator
                //PUSH - ABRE TELA DEFINIDA
                //POP -  FECHA TELA ATUAL E ABRE UMA NOVA.
                Navigator.push(
                    //
                    context,
                    //Rota
                    MaterialPageRoute(builder: (context) => TelaSecundaria()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
