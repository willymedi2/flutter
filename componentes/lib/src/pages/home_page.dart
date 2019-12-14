import 'package:componentes/src/pages/alert_pages.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),

    );


  }

  Widget _lista() {

    
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data,context),
        );
      },
    );

    
  }

  List<Widget>_listaItems(List<dynamic> lista, BuildContext context) {

    final List<Widget> opciones =[];
    lista.forEach((opt){
      final widgetTemp = ListTile(
        title: Text(opt["texto"]),
        leading: getIcon(opt["icon"]),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: (){

          final route = MaterialPageRoute(
            builder: (context) => AlertPage()
          );
          Navigator.push(context, route);
        }
        );
        opciones.add(widgetTemp);
        opciones.add(Divider());
    });    
    return opciones;
  }




}