import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';

class BuildCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Container(
        width: 155,
        height: 155,
        //cor do card, borda e sombra
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(-2.0, 2.0),
                blurRadius: 9,
              ),
            ]),

        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              //isso é gambiarra n vale kkkk
              padding: EdgeInsets.only(top: 15, left: 10),
              child: Image.asset(
                'assets/images/task.png',
                height: 50,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 20, top: 14),
              child: Column(
                children: [
                  Text(
                    "Tudo",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: primaryColor,
                    ),
                  ),
                  Text(
                    "45 Tarefas",
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
