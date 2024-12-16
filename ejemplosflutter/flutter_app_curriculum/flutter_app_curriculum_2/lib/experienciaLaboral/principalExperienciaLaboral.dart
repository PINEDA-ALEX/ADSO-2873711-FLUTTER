import 'package:flutter/material.dart';
import 'package:flutter_app_curriculum_2/experienciaLaboral/addEditExperienciaLaboral.dart';
import 'package:flutter_app_curriculum_2/experienciaLaboral/viewExperienciaLaboral.dart';
import 'package:flutter_app_curriculum_2/main.dart';
import 'package:get/get.dart';

class Principalexperiencialaboral extends StatefulWidget {
  const Principalexperiencialaboral({super.key});

  @override
  State<Principalexperiencialaboral> createState() =>
      _PrincipalexperiencialaboralState();
}

class _PrincipalexperiencialaboralState
    extends State<Principalexperiencialaboral> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            title: Text("Experiencia Laboral"),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: Icon(Icons.add),
              onPressed: () {
                showModalAddEditExperiencia(context, "new", null, null);
              }),
          body: ListView.builder(
            itemCount: miControlador.ListaExperienciaLaboral.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: ListTile(
                  title: Text(
                      miControlador.ListaExperienciaLaboral[index]["titulo"]),
                  subtitle: Text(miControlador.ListaExperienciaLaboral[index]
                      ["categoria"]),
                  leading: Text(miControlador.ListaExperienciaLaboral[index]
                      ["fechaInicio"]),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          viewExperienciaLaboral(context,
                              miControlador.ListaExperienciaLaboral[index]);
                        },
                        icon: Icon(Icons.search),
                      ),
                      IconButton(
                          onPressed: () {
                            showModalAddEditExperiencia(
                                context,
                                "edit",
                                miControlador.ListaExperienciaLaboral[index],
                                index);
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            Get.defaultDialog(
                                title: "Atencion",
                                middleText:
                                    "estas seguro en eliminar el registro con la experiencia como ${miControlador.ListaExperienciaLaboral[index]["titulo"]}",
                                onCancel: () {},
                                onConfirm: () {
                                  miControlador
                                      .removeItemListaExperienciaLaboral(index);
                                  Get.back();
                                });
                          },
                          icon: Icon(Icons.delete)),
                    ],
                  ),
                ),
              );
            },
          ),
        ));
  }
}
