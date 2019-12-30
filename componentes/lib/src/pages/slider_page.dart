import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 150;
  bool _bloquearCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),

      ),
      body: Container(
        padding: EdgeInsets.only(top:50.0),
        child: Column(
          children: <Widget>[
            _crearSlides(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            ),
          ],
        )
      ),
    );
  }

  Widget _crearSlides() {
    return Slider(

      activeColor: Colors.green,
      label: "Tamaño de la imagen",
      divisions: 20,
      value: _valorSlider,
      min: 100.0,
      max: 370.0,

      
      onChanged:(_bloquearCheck)? null: (valor){
        if(_bloquearCheck){
          return null;
        }
        setState(() {
          _valorSlider = valor;
        });
        print(valor);
      },
    );
  }
  Widget _crearImagen(){
    return Image(
      image: NetworkImage("https://sm.ign.com/ign_es/screenshot/default/thebatman1_ggb7.jpg"),
      width: _valorSlider,
      fit:  BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    // return Checkbox(
    //   value: _bloquearCheck ,
    //   onChanged: (valor){
    //     setState(() {
    //       _bloquearCheck = valor;
    //       print(valor);
    //     });
    //   },
    // );
    return CheckboxListTile(
      title: Text("Bloquear slider"),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck= valor;
        });
      },
    );

  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text("Bloquear slider"),
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
          _bloquearCheck= valor;
        });
      },
    );
  }
}