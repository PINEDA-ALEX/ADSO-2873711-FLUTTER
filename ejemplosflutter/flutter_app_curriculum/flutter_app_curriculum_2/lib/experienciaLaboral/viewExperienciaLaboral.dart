import 'package:flutter/material.dart';
import 'package:flutter_app_curriculum_2/utils/utils.dart';

viewExperienciaLaboral(BuildContext context, Map elementoActual){
  showModalBottomSheet(context: context, 
  isScrollControlled: true,
  builder: (context){
return Scaffold(
      appBar: AppBar(
        title: Text("visualizar Experiencia Laboral"),
        backgroundColor: Utils.primaryColor,
        foregroundColor: Utils.foregroundColor,
      ),

      body: ListView(
        children: [
          ListTile(
            
            iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.work),
            title: Text(elementoActual["titulo"]),
            subtitle: Text("categoria"),
            ),
          ListTile(
             iconColor: elementoActual["colorCategoria"],
            leading: Icon(Icons.group_work),
            title: Text(elementoActual["titulo"]),
            subtitle: Text("cargo"),
            ),

             ListTile(
               iconColor: elementoActual["colorCategoria"],
              leading: Icon(Icons.work_history),
              title:Text(elementoActual["fechaInicio"]),
              subtitle: Text("Fecha inicio"),
            ),
            ListTile(
               iconColor: elementoActual["colorCategoria"],
              leading: Icon(Icons.work_history),
              title:Text(elementoActual["fechaFin"]),
              subtitle: Text("Fecha fin"),
            ),
            ListTile(
               iconColor: elementoActual["colorCategoria"],
              leading: Icon(Icons.work),
              title: Text(elementoActual["funciones"]),
              subtitle: Text("Funciones"),
        ),
            
        ],
      ),
    );

  });
}






   
