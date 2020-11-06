import 'package:flutter/material.dart';

import 'constants.dart';
import 'DropDownTask.dart';


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
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
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

            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DropDownTask(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
