import 'package:flutter/material.dart';


List<Map<String, dynamic>> experienciaLaboral = [
  {
    'id': 1,
    'titulo': 'Desarrollador Flutter',
    'fechaInicio': '2021-01-15',
    'fechaFin': '2023-05-30',
    'categoria': 'Móvil',
    'colorCategoria': Colors.blue,
    'funciones': 'Desarrollo de aplicaciones móviles multiplataforma utilizando Flutter, integrando APIs RESTful y Firebase.',
    'icono': Icons.phone_android,
  },
  {
    'id': 2,
    'titulo': 'Ingeniero de Software',
    'fechaInicio': '2019-06-01',
    'fechaFin': '2021-01-10',
    'categoria': 'Backend',
    'colorCategoria': Colors.green,
    'funciones': 'Diseño e implementación de microservicios, optimización de bases de datos y manejo de servidores en la nube.',
    'icono': Icons.cloud,
  },
  {
    'id': 3,
    'titulo': 'Analista de Datos',
    'fechaInicio': '2017-03-01',
    'fechaFin': '2019-05-30',
    'categoria': 'Datos',
    'colorCategoria': Colors.orange,
    'funciones': 'Extracción, limpieza y visualización de datos utilizando Python, SQL y herramientas como Tableau.',
    'icono': Icons.bar_chart,
  },
  {
    'id': 4,
    'titulo': 'Diseñador UI/UX',
    'fechaInicio': '2023-06-01',
    'fechaFin': '2024-11-15',
    'categoria': 'Diseño',
    'colorCategoria': Colors.purple,
    'funciones': 'Creación de wireframes, prototipos y diseño de interfaces amigables para aplicaciones móviles y web.',
    'icono': Icons.design_services,
  },
  {
    'id': 5,
    'titulo': 'Administrador de Redes',
    'fechaInicio': '2015-01-10',
    'fechaFin': '2017-02-28',
    'categoria': 'Redes',
    'colorCategoria': Colors.cyan,
    'funciones': 'Configuración, monitoreo y mantenimiento de redes locales y servidores empresariales.',
    'icono': Icons.router,
  },
  {
    'id': 6,
    'titulo': 'Especialista en Ciberseguridad',
    'fechaInicio': '2020-08-15',
    'fechaFin': '2022-12-31',
    'categoria': 'Seguridad',
    'colorCategoria': Colors.red,
    'funciones': 'Implementación de políticas de seguridad, auditorías internas y gestión de riesgos cibernéticos.',
    'icono': Icons.security,
  },
  {
    'id': 7,
    'titulo': 'Desarrollador Front-End',
    'fechaInicio': '2018-09-01',
    'fechaFin': '2020-06-30',
    'categoria': 'Frontend',
    'colorCategoria': Colors.blueAccent,
    'funciones': 'Creación de interfaces web utilizando React y Vue.js, garantizando diseños responsivos y accesibles.',
    'icono': Icons.web,
  },
  {
    'id': 8,
    'titulo': 'Gerente de Proyectos',
    'fechaInicio': '2016-03-01',
    'fechaFin': '2018-08-30',
    'categoria': 'Gestión',
    'colorCategoria': Colors.lightGreen,
    'funciones': 'Planificación, ejecución y monitoreo de proyectos tecnológicos en metodologías ágiles como SCRUM.',
    'icono': Icons.assignment,
  },
  {
    'id': 9,
    'titulo': 'Consultor de TI',
    'fechaInicio': '2014-05-01',
    'fechaFin': '2015-12-31',
    'categoria': 'Consultoría',
    'colorCategoria': Colors.indigo,
    'funciones': 'Proporcionar soluciones tecnológicas para mejorar la eficiencia operativa de pequeñas y medianas empresas.',
    'icono': Icons.support_agent,
  },
  {
    'id': 10,
    'titulo': 'Ingeniero DevOps',
    'fechaInicio': '2021-07-01',
    'fechaFin': '2023-04-01',
    'categoria': 'DevOps',
    'colorCategoria': Colors.amber,
    'funciones': 'Automatización de pipelines de CI/CD, manejo de contenedores con Docker y despliegues en Kubernetes.',
    'icono': Icons.build_circle,
  },
  {
    'id': 11,
    'titulo': 'Soporte Técnico',
    'fechaInicio': '2013-04-01',
    'fechaFin': '2014-04-30',
    'categoria': 'Soporte',
    'colorCategoria': Colors.grey,
    'funciones': 'Resolución de incidencias técnicas y mantenimiento preventivo de equipos de cómputo.',
    'icono': Icons.headset_mic,
  },
  {
    'id': 12,
    'titulo': 'Profesor de Programación',
    'fechaInicio': '2019-01-01',
    'fechaFin': '2020-12-31',
    'categoria': 'Educación',
    'colorCategoria': Colors.yellow,
    'funciones': 'Enseñanza de lenguajes de programación como Python y Java a estudiantes de nivel técnico.',
    'icono': Icons.school,
  },
  {
    'id': 13,
    'titulo': 'Especialista en Machine Learning',
    'fechaInicio': '2023-01-01',
    'fechaFin': 'Presente',
    'categoria': 'IA',
    'colorCategoria': Colors.deepOrange,
    'funciones': 'Diseño de modelos predictivos, entrenamiento de redes neuronales y optimización de algoritmos.',
    'icono': Icons.memory,
  },
  {
    'id': 14,
    'titulo': 'QA Tester',
    'fechaInicio': '2020-05-01',
    'fechaFin': '2021-12-31',
    'categoria': 'Pruebas',
    'colorCategoria': Colors.pink,
    'funciones': 'Pruebas manuales y automatizadas para garantizar la calidad de software antes de su lanzamiento.',
    'icono': Icons.bug_report,
  },
  {
    'id': 15,
    'titulo': 'Administrador de Base de Datos',
    'fechaInicio': '2015-06-01',
    'fechaFin': '2018-07-30',
    'categoria': 'Bases de Datos',
    'colorCategoria': Colors.brown,
    'funciones': 'Gestión de bases de datos SQL, optimización de consultas y diseño de esquemas eficientes.',
    'icono': Icons.storage,
  },
  {
    'id': 16,
    'titulo': 'Freelancer Full Stack',
    'fechaInicio': '2018-01-01',
    'fechaFin': '2021-12-31',
    'categoria': 'Freelance',
    'colorCategoria': Colors.lime,
    'funciones': 'Desarrollo de aplicaciones web y móviles para diversos clientes en múltiples industrias.',
    'icono': Icons.business_center,
  },
  {
    'id': 17,
    'titulo': 'Administrador de Sistemas',
    'fechaInicio': '2013-07-01',
    'fechaFin': '2016-03-30',
    'categoria': 'Sistemas',
    'colorCategoria': Colors.lightBlue,
    'funciones': 'Supervisión de servidores y mantenimiento de la infraestructura tecnológica empresarial.',
    'icono': Icons.computer,
  },
  {
    'id': 18,
    'titulo': 'Técnico en Hardware',
    'fechaInicio': '2011-02-01',
    'fechaFin': '2013-06-30',
    'categoria': 'Técnico',
    'colorCategoria': Colors.lightGreen,
    'funciones': 'Reparación y ensamblaje de equipos de cómputo para uso personal y empresarial.',
    'icono': Icons.settings,
  },
  {
    'id': 19,
    'titulo': 'Consultor de Ciberseguridad',
    'fechaInicio': '2021-02-01',
    'fechaFin': 'Presente',
    'categoria': 'Ciberseguridad',
    'colorCategoria': Colors.redAccent,
    'funciones': 'Evaluación de vulnerabilidades, pentesting y asesoramiento en políticas de seguridad.',
    'icono': Icons.lock,
  },
  {
    'id': 20,
    'titulo': 'Desarrollador Blockchain',
    'fechaInicio': '2022-03-01',
    'fechaFin': 'Presente',
    'categoria': 'Blockchain',
    'colorCategoria': Colors.deepPurple,
    'funciones': 'Desarrollo de contratos inteligentes y aplicaciones descentralizadas en Ethereum.',
    'icono': Icons.currency_bitcoin,
  },
];