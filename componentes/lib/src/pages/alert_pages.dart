import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          child: Text("Mostrar Alerta"),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(23))),
          title: Text("Alerta"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Este es el Contenido"),
              FlutterLogo(size: 100.0),
              
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Cancelar"),
              onPressed: () =>Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text("OK"),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ], 
        );
      }
    );
  }
}