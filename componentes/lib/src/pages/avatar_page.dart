import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          CircleAvatar(
            radius: 30.0,
            backgroundImage: NetworkImage("https://avatarfiles.alphacoders.com/782/78200.png"),

          ),

          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text("WM"),
              backgroundColor: Colors.brown,
              
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage("https://as.com/meristation/imagenes/2019/12/12/avances/1576175321_723620_1576327909_noticia_normal.jpg"),
          placeholder: AssetImage("assets/jar-loading.gif"),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}