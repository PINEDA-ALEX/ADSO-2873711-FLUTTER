import 'package:api_app_adso_01/interfaces/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "consumo de apis -01",
      debugShowCheckedModeBanner: false,
      home: Home(),

    );
  }
}