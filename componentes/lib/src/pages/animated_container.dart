import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
    

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Esto es un texto"),

      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          curve: Curves.elasticIn ,
          width: _width,
          height: _height,
          
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_circle_filled),
        backgroundColor: Colors.yellow,
        onPressed: _cambiarForma,

      ), 
    );
  }
  void _cambiarForma(){
    final random = Random();

    setState(() {
            _width = random.nextInt(300).toDouble() + 50;
            
            _height = random.nextInt(300).toDouble()+50;
            _color = Color.fromRGBO(
              random.nextInt(256),
              random.nextInt(256),
              random.nextInt(256),
              1);
            _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());  
          });

  }
}