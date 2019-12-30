import 'package:flutter/material.dart';

class  CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
        ],
      )
    );
  }

  Widget _cardTipo1(){
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue) ,
            title:  Text("Soy el titulo de la tarjeta"),
            subtitle: Text("Subtitulo de la tarjeta"), 
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  child: Text("Cancelar"),
                  onPressed: (){},
                  color: Colors.blue,
                ),
                FlatButton(
                  child: Text("Ok"),
                  onPressed: (){},
                )
              ],
            )
        ],
      )

    );

  }
 
  Widget _cardTipo2(){
    final card = Container(
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage("https://concepto.de/wp-content/uploads/2015/05/navidad-e1546995994259.jpg"),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration( milliseconds: 200),
            height: 250.0,
            fit: BoxFit.fill,
          ),
          // Image(
          //   image: NetworkImage("http://lared.com.ec/es/wp-content/uploads/2019/07/Logo-BSC.jpg"),

          // ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text("No tengo idea que poner")),
        ],
      ),

    );
    return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, -10.0)
          )
        ]
       
      ),
    );
  }
}


