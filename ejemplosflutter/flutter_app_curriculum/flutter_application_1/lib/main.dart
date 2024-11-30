import 'package:flutter/material.dart';
import 'package:flutter_application_1/munu.dart';

void main(List<String> args) {
  runApp(HomePrincipal());
}

class HomePrincipal extends StatelessWidget {
  const HomePrincipal ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Curriculum vite v1',
      home: Menu()  
    );
  }
}
