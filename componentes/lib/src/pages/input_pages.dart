import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _password = "";
  String _fecha = "";
  String _opcionS = "Volar";
  List<String> _poderes = ["Volar","SuperFuerza","Rayos X"];
  TextEditingController _inputFielDateC = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs")
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal :10.0, vertical:20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
           Divider(),
          _crearDropdown(),
          _crearPersona(),
          
        ],
      ),
      
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.words,

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: "Nombre",
        labelStyle: TextStyle(color: Colors.red),
        //alignLabelWithHint: false, 
        counter: Text("Letra: ${_nombre.length}"),
        hintText:"Nombre de la persona" ,
        helperText: "Solo el nombre mi compa",
        suffixIcon: Icon(Icons.accessible),
        suffixText: "Hola",
        icon: Icon(Icons.add_circle),
        //prefixIcon: Icon(Icons.alarm),
        //suffix: Text("Donde se agrega")

      ),
      onChanged: (String valor){
        setState(() {
          _nombre = valor;
        });
        
      },

    );
  }
  Widget _crearPersona(){
    return ListTile(
      
      title: Text("Su Nombre es $_nombre "),
      subtitle: Text("Email: $_email"),
      trailing: Text("Poder: $_opcionS"),
    );
  }
  Widget _crearEmail(){
    return TextField(
      keyboardType: TextInputType.emailAddress,

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: "Email",
        //labelStyle: TextStyle(color: Colors.red),
        //alignLabelWithHint: false, 
       
        hintText:"Email" ,
        helperText: "Esciba el email",
        suffixIcon: Icon(Icons.alternate_email),
        
        icon: Icon(Icons.email),
        //prefixIcon: Icon(Icons.alarm),
        //suffix: Text("Donde se agrega")

      ),
      onChanged: (String valor){
        setState(() {
          _email = valor;
        });
        
      },

    );
  }
  Widget _crearPassword(){
    return TextField(
      obscureText: true,

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: "Password",
        //labelStyle: TextStyle(color: Colors.red),
        //alignLabelWithHint: false, 
       
        hintText:"Password" ,
        helperText: "Esciba su contraseña",
        suffixIcon: Icon(Icons.lock_open),
        
        icon: Icon(Icons.lock),
        //prefixIcon: Icon(Icons.alarm),
        //suffix: Text("Donde se agrega")

      ),
      onChanged: (String valor){
        setState(() {
          _password = valor;
        });
        
        
      },

    );
  } 
  Widget _crearFecha(BuildContext context){
    
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFielDateC,
      keyboardType: TextInputType.datetime,

      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: "Fecha de nacimiento",
        //labelStyle: TextStyle(color: Colors.red),
        //alignLabelWithHint: false, 
       
        hintText:"Fecha de nacimiento" ,
        helperText: "Esciba su contraseña",
        suffixIcon: Icon(Icons.date_range),
        
        icon: Icon(Icons.calendar_today),
        //prefixIcon: Icon(Icons.alarm),
        //suffix: Text("Donde se agrega")

      ),
      onTap: (){
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },

    );


  } 
  _selectDate (BuildContext context) async{
    DateTime picked =await  showDatePicker(
      context: context,
      locale: Locale('es','ES'),
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2018),
      lastDate: new DateTime(2025),

    );
    if(picked != null){
      setState(() {
        _fecha = picked.toString();
        _inputFielDateC.text = _fecha;
      });
    }
  }
  Widget _crearDropdown(){
    return Row(
      children: <Widget>[
        Icon(Icons.menu),
        SizedBox(width: 30.0,),
        DropdownButton(
          style: TextStyle(color: Colors.red ),
          value: _opcionS,
          items:_crearElementos(),
          onChanged: (opt){
            setState(() {
              _opcionS = opt;
            });
          
          },
        )
      ],
    );

  }
  List<DropdownMenuItem<String>> _crearElementos(){

    List<DropdownMenuItem<String>> lista = new List();
    for (String poder in _poderes){
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,));
        
    }
    return lista;

  }

}
