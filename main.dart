/*import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView Example'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Home'),
              onTap: () {
                // Acción al hacer clic en este elemento
                print("Clicked on Home");
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              subtitle: Text('Profile'),
              onTap: () {
                // Acción al hacer clic en este elemento
                print("Clicked on Profile");
              },
            ),
            ListTile(
              leading: Icon(Icons.chat),
              title: Text('Chat'),
              subtitle: Text('Chat'),
              onTap: () {
                // Acción al hacer clic en este elemento
                print("Clicked on Chat");
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_car ),
              title: Text('Car'),
              subtitle: Text('Car'),
              onTap: () {
                // Acción al hacer clic en este elemento
                print("Clicked on car");
              },
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Phone'),
              subtitle: Text('Phone'),
              onTap: () {
                // Acción al hacer clic en este elemento
                print("Clicked on phone");
              },
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('Group'),
              subtitle: Text('Group'),
              onTap: () {
                // Acción al hacer clic en este elemento
                print("Clicked on Group");
              },
            ),
            ListTile(
              leading: Icon(Icons.computer),
              title: Text('Computer'),
              subtitle: Text('Computer'),
              onTap: () {
                // Acción al hacer clic en este elemento
                print("Clicked on computer");
              },
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

class Plato {
  final String nombre;
  final double precio;
  final String imagen;

  Plato({required this.nombre, required this.precio, required this.imagen});
}

List<Plato> platos = [
   Plato(
     nombre: 'Ensalada de pollo',
     precio: 12.99,
     imagen: 'assets/ensalada_pollo.jpg',
   ),
  // Plato(
  //   nombre: 'Tacos de carnitas',
  //   precio: 15.99,
  //   imagen: 'assets/tacos_carnitas.jpg',
  // ),
  // Plato(
  //   nombre: 'Sándwich de atún',
  //   precio: 10.99,
  //   imagen: 'assets/sandwich_atun.jpg',
  // ),
  // Plato(
  //   nombre: 'Pasta con salsa de tomate',
  //   precio: 14.99,
  //   imagen: 'assets/pasta_salsa_tomate.jpg',
  // ),
  Plato(
    nombre: 'Hamburguesa clásica',
    precio: 12.99,
    imagen: 'assets/hamburguesa_clasica.png',
  ),
];

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menú',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menú'),
        ),
        body: ListView.builder(
          itemCount: platos.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Image.asset(platos[index].imagen,
                width: 80,
                height: 80,
                fit: BoxFit.cover,),
                title: Text(platos[index].nombre),
                subtitle: Text('\$${platos[index].precio}'),
              ),
            );
          },
        ),
      ),
    );
  }
}