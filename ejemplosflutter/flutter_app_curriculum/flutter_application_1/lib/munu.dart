import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/formacionFormaldata.dart';
import 'package:flutter_application_1/data/certificacionycursos.dart';
import 'package:flutter_application_1/data/experiencialaboral.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Curriculum Vitae V1')),
        backgroundColor: const Color.fromARGB(255, 42, 46, 171),
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: CircleAvatar(
                radius: 100,
                backgroundImage: NetworkImage("assets/images/yo.jpg"),
              ),
            ),
          ),
          const Divider(
            color:  Color.fromARGB(255, 42, 46, 171),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Informacio personal"),
              leading: const Icon(Icons.person),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
               
              },
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Formacion academica"),
              leading: const Icon(Icons.school),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                 showModalBottomSheet(
                  isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return Scaffold(
                        appBar: AppBar(
                          title: const Text("Formacion Academica"),
                          backgroundColor: const Color.fromARGB(255, 42, 46, 171),
                          foregroundColor: Colors.white,
                        ),
                        body: ListView.separated(
                          itemCount: formacionAcademicalista.length,
                          separatorBuilder: (BuildContext context, int index) {
                            return Divider() ;
                          },
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              title: Text(formacionAcademicalista[index]["titulo"]),
                              subtitle: Text(
                                formacionAcademicalista[index]["tipoEstudio"],
                                style: TextStyle(color: formacionAcademicalista[index]["color"]),  
                                ),
                                leading:Text(formacionAcademicalista[index]["anioFinalizacion"].toString()), 
                            );
                          },
                        ),
                      );

                    });
              },
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Certificaciones y cursos"),
              leading: const Icon(Icons.science),
              trailing: const Icon(Icons.arrow_forward_ios),
                            onTap: () {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Certificaciones y Cursos"),
          backgroundColor: const Color.fromARGB(255, 42, 46, 171),
          foregroundColor: Colors.white,
        ),
        body: ListView.separated(
          itemCount: estudiosYCursos.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(estudiosYCursos[index]["titulo"] ?? "Sin título"),
              subtitle: Text(
                estudiosYCursos[index]["categoria"] ?? "Sin categoría",
                style: TextStyle(color: estudiosYCursos[index]["color"]),
              ),
              leading: CircleAvatar(
                backgroundColor: estudiosYCursos[index]["color"],
                child: Text(
                  estudiosYCursos[index]["titulo"]?.substring(0, 1),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      );
    },
  );
},

            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Experiencia Laboral "),
              leading: const Icon(Icons.factory),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Experiencia Laboral"),
          backgroundColor: const Color.fromARGB(255, 42, 46, 171),
          foregroundColor: Colors.white,
        ),
        body: ListView.separated(
          itemCount: experienciaLaboral.length,
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
          itemBuilder: (BuildContext context, int index) {
            // Acceder a los datos de cada elemento en la lista
            var trabajo = experienciaLaboral[index];

            return ListTile(
              // Título con el nombre del puesto
              title: Text(trabajo["titulo"] ?? "Sin título"),
              // Subtítulo con la categoría, color asociado y las funciones
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    trabajo["categoria"] ?? "Sin categoría",
                    style: TextStyle(color: trabajo["colorCategoria"] ?? Colors.black),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    trabajo["funciones"] ?? "Sin funciones",
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
              // Icono asociado a la posición laboral
              leading: CircleAvatar(
                backgroundColor: trabajo["colorCategoria"] ?? Colors.grey,
                child: Icon(
                  trabajo["icono"] ?? Icons.work,
                  color: Colors.white,
                ),
              ),
              // Mostrar fechas de inicio y fin
              trailing: Text(
                "${trabajo["fechaInicio"]} - ${trabajo["fechaFin"]}",
                style: const TextStyle(fontSize: 12),
              ),
            );
          },
        ),
      );
    },
  );


              },
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Abilidades"),
              leading: const Icon(Icons.fact_check),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Proyectos destacados"),
              leading: const Icon(Icons.star),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Idiomas"),
              leading: const Icon(Icons.language),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          ),
          Card(
            elevation: 10,
            child: ListTile(
              title: const Text("Experiencias personales"),
              leading: const Icon(Icons.people_alt),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            ),
          )
        ],
      ),
    );
  }
}
