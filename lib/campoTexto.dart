import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
//Controlador do que e digitado no editText
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exercio Componentes de Interface"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              cursorColor: Colors.red,
              //Tipo de teclado a ser usado(text,email,number)
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor",
              ),
              //Habilitar ou desabilitar campos
              //enabled: true,
              //numero maximo de caractere
              //maxLength: 2,
              //maxLengthEnforced: false,
              /*style: TextStyle(
                fontSize: 18, 
                color: Colors.blue
                ),*/
              //Ocultar as palavras(usadas em password)
              //obscureText: true,
              //Pegar o que foi digitado pelo usuario
              /*onChanged: (String texto) => {
                print("Valor Digitado: " + texto)
                },*/
              onSubmitted: (String texto) =>
                  {print("Valor Confirmado: " + texto)},
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text(
              "Salvar",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.red,
            onPressed: () {
              print("Valor digitado: " + _textEditingController.text);
            },
          ),
        ],
      ),
    );
  }
}
