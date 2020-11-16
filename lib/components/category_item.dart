import 'package:flutter/material.dart';
import 'package:mytodo/models/category.dart';
import '../screens/categories_tasks_screen.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  CategoryItem(this.category);

  //pega a categoria de acordo com a qual eu clico
  void _selectCatagory(BuildContext context) {
    //rota nomeada
    Navigator.of(context).pushNamed(
      '/categories-tasks',
      arguments: category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      
      child: InkWell(
        onTap: () => _selectCatagory(context),
        //borda do inkwell
        borderRadius: BorderRadius.circular(8),

        child: Column(
          
          children: [

            //container do icone
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
              alignment: Alignment.centerLeft,
                child: Icon(Icons.add, size: 30.0,color: Colors.red,

                ),
            ),

            //container do texto e quantidade de tarefas
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(category.title,style: TextStyle(
                    
                    color: Theme.of(context).primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,

                  ),),
                  //tarefas
                  Text(
                    "24 tarefas",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
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
