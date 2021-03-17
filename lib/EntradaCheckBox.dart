import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  //Mudar estado do checkbox
  bool _estaSelecionado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        child: Column(
          children: [
            Text("Comida Angolana"),
            Checkbox(
                value: _estaSelecionado,
                onChanged: (bool valor) {
                  setState(() {
                    _estaSelecionado = valor;
                  });
                  print("CheckBox: " + valor.toString());
                })
          ],
        ),
      ),
    );
  }
}
