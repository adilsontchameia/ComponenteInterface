import 'package:flutter/material.dart';

class ListaEvento extends StatefulWidget {
  @override
  _ListaEventoState createState() => _ListaEventoState();
}

class _ListaEventoState extends State<ListaEvento> {
  List _itens = [];

  void _carregarItens() {
    _itens = [];
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título ${i} Lorem ipsum dolor sit amet.";
      item["descricao"] = "Descrição ${i} ipsum dolor sit amet.";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista  Com Eventos de Click"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: _itens.length,
            itemBuilder: (context, indice) {
              //Map<String, dynamic> item = _itens[indice];
              //print("item ${ _itens[indice]["titulo"] }");

              return ListTile(
                onTap: () {
                  //print("On Tap ${indice}");
                  //Usar AlertDialog
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Deseja vizualizar: " +
                              _itens[indice]["titulo"] +
                              " ?"),
                          titlePadding: EdgeInsets.all(30),
                          titleTextStyle: TextStyle(
                              fontSize: 20, color: Colors.yellowAccent),
                          content: Text(_itens[indice]["descricao"]),
                          contentPadding: EdgeInsets.all(10),
                          backgroundColor: Colors.orange,
                          contentTextStyle: TextStyle(color: Colors.white),
                          //Definindo Widgets no AlertDialog
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                print("Selecionado Sim");
                                //Fechando a dialogApos Clicar.
                                Navigator.pop(context);
                              },
                              child: Text("Sim"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                print("Selecionado Nao");
                                //Fechando a dialogApos Clicar.
                                Navigator.pop(context);
                              },
                              child: Text("Nao"),
                            )
                          ],
                        );
                      });
                },
                /*onLongPress: () {
                  print("On LongPress");
                },*/
                title: Text(_itens[indice]["titulo"]),
                subtitle: Text(_itens[indice]["descricao"]),
              );
            }),
      ),
    );
  }
}
