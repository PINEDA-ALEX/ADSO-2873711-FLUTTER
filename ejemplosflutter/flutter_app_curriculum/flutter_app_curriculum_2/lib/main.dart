import 'package:flutter/material.dart';
import 'package:flutter_app_curriculum_2/controllers/myController.dart';
import 'package:flutter_app_curriculum_2/data/experienciaData.dart';
import 'package:flutter_app_curriculum_2/interfaz/principal.dart';
import 'package:get/get.dart';



void main(List<String> args) {
  Get.put(Mycontroller());
  miControlador.cambiarListaExperienciaLaboral(listaExperienciaDesarrollador);
  runApp(Principal());
}

Mycontroller miControlador = Get.find();