import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mytodo/constants.dart';
import 'package:mytodo/screens/categories_screen.dart';

class MyHome extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Categorias",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            color: Colors.white,
          ),
          //funcao para abrir o Drawer
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(context),
      body: _body(),
    );
  }

  //menu lateral
  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
            accountName: Text(
              "Chandler",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            accountEmail: Text("Chandler@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/originals/0d/8d/4b/0d8d4bf54466ce57d337d033d5689559.jpg"),
            ),
            otherAccountsPictures: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Theme.of(context).primaryColor,
                  child: CircleAvatar(
                    radius: 17,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
          ListTile(
            leading: Icon(
              Icons.inbox,
              color: Colors.blueAccent,
            ),
            title: Text("Todas tarefas"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.today,
              color: Colors.red,
            ),
            title: Text("Hoje"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.calendar_today,
              color: Colors.deepPurple,
            ),
            title: Text("Próximos dias"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.blueGrey,
            ),
            title: Text("Configurações"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.person,
              color: primaryTeste,
            ),
            title: Text("Perfil"),
            onTap: () {},
          ),
          Divider(),
        ],
      ),
    );
  }

  _body() {
    return CategoriesScreen();
  }
}

//list tile customizado
class CustomListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.person),
          Text("Perfil"),
          Icon(Icons.arrow_right),
        ],
      ),
    );
  }
}

//talvez eu use depois

// child: GridView.count(
//         crossAxisCount: 2,
//         children: [
//           MyCard(
//             nomeTarefa: "Tudo",
//             iconData: Icons.assignment,
//             cor: Colors.blueAccent,
//             quantidadeTarefas: "24 Tarefas",
//           ),
//           MyCard(
//             nomeTarefa: "Trabalho",
//             iconData: Icons.work,
//             cor: Colors.green,
//             quantidadeTarefas: "12 Tarefas",
//           ),
//           MyCard(
//             nomeTarefa: "Música",
//             iconData: Icons.headset,
//             cor: Colors.red,
//             quantidadeTarefas: "12 Tarefas",
//           ),
//           MyCard(
//             nomeTarefa: "Viagem",
//             iconData: Icons.airplanemode_active,
//             cor: Colors.lightBlue,
//             quantidadeTarefas: "12 Tarefas",
//           ),
//           MyCard(
//             nomeTarefa: "Estudo",
//             iconData: Icons.laptop_chromebook,
//             cor: Colors.deepPurple,
//             quantidadeTarefas: "12 Tarefas",
//           ),
//           MyCard(
//             nomeTarefa: "Compras",
//             iconData: Icons.shopping_cart,
//             cor: Colors.green,
//             quantidadeTarefas: "12 Tarefas",
//           ),
//           MyCard(
//             nomeTarefa: "Estudo",
//             iconData: Icons.book,
//             quantidadeTarefas: "12 Tarefas",
//           ),
//         ],
//       ),
