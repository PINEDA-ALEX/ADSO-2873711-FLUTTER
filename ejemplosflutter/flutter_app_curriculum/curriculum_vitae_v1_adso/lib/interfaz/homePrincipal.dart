import 'package:curriculum_vitae_v1_adso/experienciaLaboral/principalExperienciaLaboral.dart';
import 'package:curriculum_vitae_v1_adso/perfilPersonal/perFilpersonal.dart';
import 'package:curriculum_vitae_v1_adso/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homeprincipal extends StatefulWidget {
  const Homeprincipal({super.key});

  @override
  State<Homeprincipal> createState() => _HomeprincipalState();
}

class _HomeprincipalState extends State<Homeprincipal> {
  get miControlador => null;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Center(child: Text(miControlador.Titulo)),
          backgroundColor: Utils.primaryColor,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Image(image: NetworkImage("assets/images/Liverpool.jpg")),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: CircleAvatar(
                    radius: 100,
                    backgroundImage: NetworkImage("assets/images/yo.jpg"),
                  ),
                ),
              ),
              Divider(
                color: Utils.primaryColor,
                height: 2,
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  miControlador.cambiarTitulo("Curriculum Vitae V2 -ADSO");
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Utils.primaryColor,
                height: 2,
              ),
              ListTile(
                title: Text("informacion Personal"),
                leading: Icon(Icons.home),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  miControlador.cambiarTitulo("Informacion Personal");
                  Get.to(Perfilpernonal());
                },
              ),
              Divider(
                color: Colors.blue,
                height: 2,
              ),
              ListTile(
                title: Text("Educacion formal"),
                leading: Icon(Icons.school),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  miControlador.cambiarTitulo("Educacion formal");
                  Navigator.pop(context);
                  Get.defaultDialog(
                      title: "Alerta",
                      middleText: "Esta serapublicada",
                      onConfirm: () {},
                      onCancel: () {});
                },
              ),
              Divider(
                color: Colors.blue,
                height: 2,
              ),
              ListTile(
                title: Text("Formacion Continuada"),
                leading: Icon(Icons.book),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  miControlador.cambiarTitulo("Formacion Continuada");
                  Navigator.pop(context);
                  Get.snackbar("Atencion!", "Seccion no disponibles",
                      backgroundColor: Colors.red[300],
                      colorText: Colors.white,
                      icon: Icon(Icons.dangerous));
                },
              ),
              Divider(
                color: Colors.blue,
                height: 2,
              ),
              ListTile(
                title: Text("Publicaciones"),
                leading: Icon(Icons.newspaper),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  miControlador.cambiarTitulo("Publicaciones");
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.blue,
                height: 2,
              ),
              ListTile(
                title: Text("Experiencia laboral"),
                leading: Icon(Icons.work_outline),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  miControlador.cambiarTitulo("Experiencia laboral");
                  Navigator.pop(context);
                  Get.to(Principalexperiencialaboral());
                },
              ),
              Divider(
                color: Colors.blue,
                height: 2,
              ),
              ListTile(
                title: Text("Referencias"),
                leading: Icon(Icons.people),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  miControlador.cambiarTitulo("Referencias");
                  Navigator.pop(context);
                },
              ),
              Divider(
                color: Colors.blue,
                height: 2,
              ),
              ListTile(
                title: Text("Acerca de"),
                leading: Icon(Icons.people),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  miControlador.cambiarTitulo("Acerca de");
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
