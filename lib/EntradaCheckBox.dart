import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  _EntradaCheckBoxState createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  //Mudar estado do checkbox
  bool _comidaAngola = false;
  bool _comidaNamibia = false;

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
            CheckboxListTile(
                title: Text("Comida Angolana"),
                subtitle: Text("Gastronomia Saborosa"),
                activeColor: Colors.red,
                //selected: true,
                //Icone
                secondary: Icon(Icons.food_bank),
                value: _comidaAngola,
                onChanged: (bool valor) {
                  setState(() {
                    _comidaAngola = valor;
                  });
                }),
            CheckboxListTile(
                title: Text("Comida Namibiana"),
                subtitle: Text("Gastronomia Selvagem"),
                activeColor: Colors.red,
                //selected: true,
                //Icone
                secondary: Icon(Icons.no_food),
                value: _comidaNamibia,
                onChanged: (bool valor) {
                  setState(() {
                    _comidaNamibia = valor;
                  });
                }),
            Container(
              padding: EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RaisedButton(
                      child: Text(
                        "Salvar",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      color: Colors.orange,
                      onPressed: () {
                        print("Comida Angolana: " +
                            _comidaAngola.toString() +
                            ", Comida Namibiana: " +
                            _comidaNamibia.toString());
                      })
                ],
              ),
            ),

            /*
            Text("Comida Angolana"),
            Checkbox(
                value: _estaSelecionado,
                onChanged: (bool valor) {
                  setState(() {
                    _estaSelecionado = valor;
                  });
                  print("CheckBox: " + valor.toString());
                })
            */
          ],
        ),
      ),
    );
  }
}
