import 'package:api_app_adso_01/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListaUsuarios extends StatefulWidget {
  const ListaUsuarios({super.key});

  @override
  State<ListaUsuarios> createState() => _ListaUsuariosState();
}

class _ListaUsuariosState extends State<ListaUsuarios> {
  @override
  Widget build(BuildContext context) {
    return Obx(()=> ListView.builder(
      itemCount: miControlador.ListaUsuariosReqRes.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 15,
          child: ListTile(
            title: Text(miControlador.ListaUsuariosReqRes[index]["first_name"]+" "+miControlador.ListaUsuariosReqRes[index]["last_name"]),
            subtitle: Text(miControlador.ListaUsuariosReqRes[index]["email"]),
            leading: Image(image: NetworkImage(miControlador.ListaUsuariosReqRes[index]["avatar"])),
            trailing: Text("Id:"+miControlador.ListaUsuariosReqRes[index]["id"].toString()),
          ),
        );
      },
    ));
  }
}
