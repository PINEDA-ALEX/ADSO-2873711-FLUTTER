import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grids',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Trabajo con Grids')),
          backgroundColor: Colors.yellow,
          foregroundColor: const Color.fromARGB(255, 70, 70, 70),
        ),
        body: Container(
          color: Colors.orange,
          child: GridView.count(
            crossAxisSpacing: 1,
            mainAxisSpacing: 2, 
            crossAxisCount: 2, // Cantidad de elementos por fila
            children: const [
              Card(
                child: Text('tarjeta 1'),
              ),
                 Card(
                child: Text('tarjeta 2'),
              ),
                 Card(
                child: Text('tarjeta 3'),
              ),
                 Card(
                child: Text('tarjeta 4'),
              ),
                 Card(
                child: Text('tarjeta 5'),
              ),
                 Card(
                child: Text('tarjeta 6'),
              ),
                 Card(
                child: Text('tarjeta 7'),
              ),
                 Card(
                child: Text('tarjeta 8'),
              ),
                 Card(
                child: Text('tarjeta 9'),
              ),
                 Card(
                child: Text('tarjeta 10'),
              )

              
            ],
          ),
        )
      ),
    );
  }
}