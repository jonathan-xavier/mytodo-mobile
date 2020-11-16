import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';
class MyCard extends StatelessWidget {
String nomeTarefa;
IconData iconData;
String quantidadeTarefas;
Color cor;

MyCard({this.iconData,this.nomeTarefa,this.quantidadeTarefas,this.cor});



  @override
  Widget build(BuildContext context) {
    return Card(
      //color: Color(0xff212130),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: () {},
        //splashColor: Colors.blue,
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.fromLTRB(18, 10, 0, 0),
              alignment: Alignment.centerLeft,
                child: Icon(Icons.add, size: 30.0,color: Colors.red,

                ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text("text",style: TextStyle(
                    //mudanca
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),),
                  //tarefas
                  Text(
                    "quantidadeTarefas",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
