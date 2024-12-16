import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/myController.dart';
import 'interfaces/inicio.dart';
import 'interfaces/principal.dart';
import 'reqresp/listaUsuarios.dart';

void main(List<String> args) {
  Get.put(MyController());
  runApp(Principal());
}

MyController miControlador = Get.find();
List<dynamic> opcionPaginas = [
  Inicio(),
  ListaUsuarios(),
];
