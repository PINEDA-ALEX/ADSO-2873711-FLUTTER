import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  // MyHome hereda de statefulWidget
  const MyHome({super.key}); // Constructor clase MyHome

  @override // Se sobreescribe el método del padre createState para poder crear estados del Widget
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override // Se sobreescribe el metodo build para retornar un Widget con toda la interfaz
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios Turisticos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sitios Turisticos'),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Text('Gran Muralla China'),
                Text('Torre Eiffel'),
                Text('Machu Picchu'),
                Text('La Gran Piramide de Giza'),
                Text('Cristo Redentor'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
