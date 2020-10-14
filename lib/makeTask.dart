import 'package:flutter/material.dart';

import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';

class BuildTask extends StatefulWidget {
  @override
  _BuildTaskState createState() => _BuildTaskState();
}

class _BuildTaskState extends State<BuildTask> {
  TextEditingController _controllerTitulo = TextEditingController();

  TextEditingController _controllerDescricao = TextEditingController();
  String dropdownValue = 'one';

  List categoria = ["Trabalho", "Casa", "Música", "Estudos", "Viagem"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black54,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Container(
        //aqui fica o texto
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Text(
                "Add Tarefa",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: secundaryColor,
                ),
              ),
            ),

            //aqui vai ficar o Campo de texto
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                controller: _controllerTitulo,
                decoration: InputDecoration(
                  fillColor: Colors.black,
                  hintText: "Título",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: TextField(
                maxLines: 4,
                cursorColor: secundaryColor,
                controller: _controllerDescricao,
                decoration: InputDecoration(
                  fillColor: Colors.black,
                  hintText: "Descrição",
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: DropdownButton<String>(
            //     value: dropdownValue,
            //     icon: Icon(Icons.arrow_downward),
            //     iconSize: 24,
            //     elevation: 16,
            //     style: TextStyle(color: Colors.deepPurple),
            //     underline: Container(
            //       height: 2,
            //       color: Colors.deepPurpleAccent,
            //     ),
            //     onChanged: (String newValue) {
            //       setState(() {
            //         dropdownValue = newValue;
            //       });
            //     },
            //     items: <String>['One', 'Two', 'Free', 'Four']
            //         .map<DropdownMenuItem<String>>((String value) {
            //       return DropdownMenuItem<String>(
            //         value: value,
            //         child: Text(value),
            //       );
            //     }).toList(),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
