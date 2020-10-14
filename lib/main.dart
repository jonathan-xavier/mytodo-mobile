import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mytodo/makeTask.dart';
import 'constants.dart';
import 'constants.dart';
import 'constants.dart';
import 'sizeConfig.dart';
import 'card.dart';
import 'makeTask.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      scaffoldBackgroundColor: Color(0xFFF8F9FB),
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        brightness: Brightness.light,
      ),
    ),
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          padding: EdgeInsets.only(top: 20),
          icon: SvgPicture.asset(
            "assets/icons/menu.svg",
            height: SizeConfig.defaultSize * 2,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20),
              child: Row(
                children: [
                  Text(
                    "Categorias",
                    style: TextStyle(
                      color: secundaryColor,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BuildCard(),
                        BuildCard(),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        BuildCard(),
                        BuildCard(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      //botao para adicionar task
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: secundaryColor,
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
