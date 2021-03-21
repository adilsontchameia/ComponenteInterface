import 'package:flutter/material.dart';

class Listas extends StatefulWidget {
  @override
  _ListasState createState() => _ListasState();
}

class _ListasState extends State<Listas> {
  //Lista Estatica
  List _itens = [];

  //Metodo para carregarItes
  void _carregarItens() {
    //Estrutura for para montar a listagem
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas no Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        //Criar Lista
        child: ListView.builder(
            //Quantidade de itens
            itemCount: 5,
            //Indice -
            itemBuilder: (context, indice) {
              print("Item : ${indice}");
              return ListTile(
                //Podemos usar outros widgets
                title: Text(indice.toString()),
                subtitle: Text("Subtitulo"),
              );
            }),
      ),
    );
  }
}
