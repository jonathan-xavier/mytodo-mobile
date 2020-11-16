import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytodo/components/my_home.dart';
import 'package:mytodo/screens/categories_tasks_screen.dart';
import 'sizeConfig.dart';
import 'components/makeTask.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(
    MaterialApp(
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("pt", "BR"),
      ],
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        accentColor: Colors.amber,
        canvasColor: Color(0xFFF8F9FB),
          //color: Colors.transparent,
          //elevation: 1,RGBO(255, 254, 229, 1),
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      //criando rota nomeada
      routes: {
        '/categories-tasks': (ctx) => CategoriesTasksScreen(),
      },
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: MyHome(),

      //botao para adicionar task
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        //backgroundColor: secundaryColor,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (contex) => BuildTask()),
          );
        },
      ),
    );
  }
}
