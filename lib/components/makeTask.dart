import 'package:flutter/material.dart';

import '../constants.dart';
import '../DropDownTask.dart';

class BuildTask extends StatefulWidget {
  @override
  _BuildTaskState createState() => _BuildTaskState();
}

class _BuildTaskState extends State<BuildTask> {
  TextEditingController _controllerTitulo = TextEditingController();

  TextEditingController _controllerDescricao = TextEditingController();
  //isso aqui é do combobox
  String dropdownValue = "One";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Criar Tarefa"),
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      //aqui fica o texto
      child: Column(
        children: [
          //aqui vai ficar o Campo de texto
          Padding(
            padding: EdgeInsets.fromLTRB(20, 18, 20, 10),
            child: TextField(
              controller: _controllerTitulo,
              decoration: InputDecoration(
                fillColor: Colors.black,
                hintText: "Título",
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: TextField(
              maxLines: 3,
              cursorColor: secundaryColor,
              controller: _controllerDescricao,
              decoration: InputDecoration(
                fillColor: Colors.black,
                hintText: "Descrição",
              ),
            ),
          ),

          //aqui vai ficar o combo box

          Container(
            height: 60,
            padding: const EdgeInsets.fromLTRB(30, 0, 50, 0),
            child: DropDown(),
          ),
          Divider(
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                child: Text(
                  "Selecione uma data",
                  style: TextStyle(
                    fontSize: 16,
                    color: primaryTeste,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () async {
                  final data = await _showdatepicker(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text(
                  "data",
                ),
              ),
            ],
          ),
          Row(),

          Padding(
            padding: EdgeInsets.only(top: 10),
            child: RaisedButton(
              onPressed: () {},
              child: Text("Salvar tarefa"),
            ),
          ),
        ],
      ),
    );
  }

  _showdatepicker(BuildContext context) {
    return showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
      locale: Locale("pt", "BR"),
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: primaryTeste,
            accentColor: textColor,
            colorScheme:
                ColorScheme.light(primary: outraTeste, surface: primaryTeste),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child,
        );
      },
    );
  }
}
