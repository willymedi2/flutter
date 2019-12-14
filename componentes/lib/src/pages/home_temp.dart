import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ["Uno","Dos","Tres","Cuatro"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes Temp"),
      ),
      body: ListView(
        children: _crearItemscorto()
        ,
        ),
    );
  }

  List<Widget> _crearItems(){
    List<Widget> lista = List<Widget>();
    for(var opt in opciones){
      lista..add(ListTile(title: Text("$opt"),))
           ..add(Divider()); 
      

    }    

    return lista;
  }
  List<Widget> _crearItemscorto(){

    var widgets = opciones.map(( item ){
      return Column(
        children: <Widget>[
          ListTile(
            subtitle: Text("Cualquier cosa"),
            title: Text(item),
            leading: Icon(Icons.home),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();    

    return widgets;
  }
}