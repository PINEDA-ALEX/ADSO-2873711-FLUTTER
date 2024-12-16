import 'package:flutter/material.dart';
import 'package:flutter_app_curriculum_2/main.dart';
import 'package:flutter_app_curriculum_2/utils/utils.dart';
import 'package:get/get.dart';

final TextEditingController titiloControlle = TextEditingController();
final TextEditingController fechaInicioControlle = TextEditingController();
final TextEditingController fechaFinControlle = TextEditingController();
final TextEditingController funcionesControlle = TextEditingController();
final TextEditingController categoriaControlle = TextEditingController();

void limpiarCampos() {
  titiloControlle.clear();
  fechaInicioControlle.clear();
  fechaFinControlle.clear();
  funcionesControlle.clear();
  categoriaControlle.clear();
}

showModalAddEditExperiencia(
    context, String opcionAddEdit, dynamic elementoActual, dynamic index) {
  limpiarCampos();
  if (opcionAddEdit == "edit") {
    titiloControlle.text = elementoActual["titulo"];
    fechaInicioControlle.text = elementoActual["fechaInicio"];
    fechaFinControlle.text = elementoActual["fechaFin"];
    funcionesControlle.text = elementoActual["funciones"];
    categoriaControlle.text = elementoActual["categoria"];
  }
  showModalBottomSheet(
      isScrollControlled: false,
      context: context,
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(opcionAddEdit == "new"
                ? "Ingresar Experencia"
                : "Editar Experiencia"),
            backgroundColor: Utils.primaryColor,
            foregroundColor: Utils.foregroundColor,
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Utils.primaryColor,
              foregroundColor: Utils.foregroundColor,
              child:
                  opcionAddEdit == "new" ? Icon(Icons.save) : Icon(Icons.edit),
              onPressed: () {
                if (opcionAddEdit == "new") {
                  Map<String, dynamic> newItem = {
                    "titulo": titiloControlle.text,
                    "fechaInicio": fechaInicioControlle.text,
                    "fechaFin": fechaFinControlle.text,
                    "funciones": funcionesControlle.text,
                    "categoria": categoriaControlle.text,
                    "colorCategoria": Colors.brown
                  };
                  miControlador.addItemListaExperienciaLaboral(newItem);
                 
                } else {
                  miControlador.ListaExperienciaLaboral;
                 Get.back();
                  limpiarCampos();
                  Get.snackbar("Atencion!", "Experiensa agregada",
                      backgroundColor: Colors.green[200],
                      colorText: Colors.white);}
              }),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                TextFormField(
                  controller: titiloControlle,
                  decoration: InputDecoration(
                      labelText: "titulo",
                      hintText: "Ingrese titulo de la Experiencia"),
                ),
                TextFormField(
                  controller: fechaInicioControlle,
                  decoration: InputDecoration(
                      labelText: "Fecha inicio",
                      hintText: "Ingrese fecha iniciode la Experiencia"),
                ),
                TextFormField(
                  controller: fechaFinControlle,
                  decoration: InputDecoration(
                      labelText: "fecha fin",
                      hintText: "Ingrese fecha finde la Experiencia"),
                ),
                TextFormField(
                  controller: funcionesControlle,
                  decoration: InputDecoration(
                      labelText: "funciones",
                      hintText: "Ingrese las funciones de la Experiencia"),
                ),
                TextFormField(
                  controller: categoriaControlle,
                  decoration: InputDecoration(
                      labelText: "Categoria",
                      hintText: "Ingrese Categoria de la Experiencia"),
                ),
              ],
            ),
          ),
        );
      });
}