import 'package:flutter/material.dart';
class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        splashColor: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.home, size: 60.0,),
            Text("Home",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,

            ),),
          ],
        ),
      ),
    );
  }
}
