import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Informacion personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('informacion personal')),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTxoVYK9gVqDWkfv3blKuxWEO0t9JrH6XSjxg&s"),
                  ),
                  Image(
                    image: NetworkImage('./images/R6.jpg'),
                    width: 500,
                    height: 500,
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Alex'),
                    subtitle: Text('Nombre'),
                    leading: Icon(Icons.account_circle_rounded),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Pineda'),
                    subtitle: Text('Apellido'),
                    leading: Icon(Icons.account_circle_outlined),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('3127627284'),
                    subtitle: Text('Telefono'),
                    leading: Icon(Icons.call),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('calle#19 N 44-19'),
                    subtitle: Text('Diréccion'),
                    leading: Icon(Icons.bungalow_sharp),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('SENA - CPIC'),
                    subtitle: Text('Empresa'),
                    leading: Icon(Icons.business),
                  ),
                  Divider(),
                  ListTile(
                    title: Text('2073711'),
                    subtitle: Text('código postal'),
                    leading: Icon(Icons.chat_outlined),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
