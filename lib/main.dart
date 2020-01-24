import 'package:flutter/material.dart';

//Creacion de una clase para meter todo , asi en el main solo mandar a llamar a la clase.
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ejemplos Flutter',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: Scaffold(
        appBar: AppBar(
          title: Text('hola flutter'),
        ),
        body: Center(
          child: Container(  //Es un contenedor .. adentro de aqui se ponen todos los widgets que editaran este contenedor.
            //color: Color.fromARGB(231, 213, 321, 123),
            // color: Colors.red,
            width: 200,
            height: 100,  //tamaño y ancho del contenedor
            decoration: BoxDecoration(   // este es un widget echo para decorar el contenedor (no especificamente un contenedor).
              color: Colors.orange, //color del contenedor 
              borderRadius: BorderRadius.only(  //widget para poder realizar cambios del borderradius
                  topLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50)),  //estos son los cambios del bordernadius
              boxShadow: [
                BoxShadow(color: Colors.black45, offset: Offset(6, 6))
              ],
              border: Border.all(  // cambios para el borde...
                color: Colors.brown,
                width: 6,
              ),
            ),
            child: Text(  // El child es para darle una seccion al texto , ya que sin el , el texto no "sabra donde ponerse"
              'Hola',
              style: TextStyle(fontSize: 25, color: Colors.green), // ediciones del texto con "textstyle"
            ),
          ),
        ),
      ),
    );
  }
}
void main() {
  runApp(Screen1());
}
