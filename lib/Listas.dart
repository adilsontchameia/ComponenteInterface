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
      //Para cada execucao do for, vou criar um map
      Map<String, dynamic> item = Map();
      item["titulo"] = "Titulo ${i} Loren ipsum dolor sit amet";
      item["descricao"] = "Titulo ${i} Loren ipsum dolor sit amet";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    //Carregar os itens
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Listas no Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        //Criar Lista
        child: ListView.builder(
            //Quantidade de itens
            itemCount: _itens.length,
            //Indice -
            itemBuilder: (context, indice) {
              print("Item : ${_itens[indice].toString()}");
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
