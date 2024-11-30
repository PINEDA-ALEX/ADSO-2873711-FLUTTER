import 'package:curriculum_vitae_v1_adso/controllers/myController.dart';
import 'package:curriculum_vitae_v1_adso/data/experienciaData.dart';
import 'package:curriculum_vitae_v1_adso/interfaz/principal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main(List<String> args) {
  Get.put(Mycontroller());
  miControlador.cambiarListaExperienciaLaboral(listaExperienciaDesarrollador);
  runApp(Principal());
}

Mycontroller miControlador = Get.find();