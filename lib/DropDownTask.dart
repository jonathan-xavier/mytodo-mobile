import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytodo/constants.dart';
class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {

  String nomeCategoria="";
  var _categorias =['Trabalho','Música','Viagem','Estudo','Compras'];
  var _itemSelecionado = 'Trabalho';

  @override
  Widget build(BuildContext context) {
    return criaDropDownButton();
  }

  criaDropDownButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[

          DropdownButton<String>(
            items : _categorias.map((String dropDownStringItem) {
              return DropdownMenuItem<String>(
                value: dropDownStringItem,
                child: Text(dropDownStringItem),
              );
            }).toList(),

            onChanged: ( String novoItemSelecionado) {
              _dropDownItemSelected(novoItemSelecionado);
              setState(() {
                this._itemSelecionado =  novoItemSelecionado;
              });
            },
            value: _itemSelecionado,
          ),
          Row(

            children: [
              CircleAvatar(
                backgroundColor: Color(0xFF23F4A9),
                radius: 5,
              ),
              Text(" $_itemSelecionado",
                style: TextStyle(fontSize: 18.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
  void _dropDownItemSelected(String novoItem){
    setState(() {
      this._itemSelecionado = novoItem;
    });
  }
}