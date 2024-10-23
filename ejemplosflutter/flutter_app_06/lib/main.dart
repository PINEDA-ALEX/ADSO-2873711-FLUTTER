import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios Turístocos',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Sitios Turísticos')),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: sitiosTuristicos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: const Color.fromARGB(255, 26, 227, 223),
              shadowColor: Colors.red,
              surfaceTintColor: Colors.grey,
              elevation: 5,
              margin: EdgeInsets.all(10),
              child: ListTile(
                title: Text(' ${sitiosTuristicos[index]} '),
                subtitle: Text('Sitio ${index + 1}'),
                leading: const Icon(Icons.location_on),
                trailing: const Icon(Icons.arrow_circle_right_rounded),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Sitio Turistico N ${index + 1}'),
                          content: Text(sitiosTuristicos[index]),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('cerrar'))
                          ],
                        );
                      });
                },
              ),
            );
          },
        ),
        // ListView.separated(
        //itemCount: sitiosTuristicos.length,
        //separatorBuilder: (BuildContext context, int index) {
        //  return const Divider();
        //},
        //itemBuilder: (BuildContext context, int index) {
        //  return ListTile(
        //    title: Text(' ${sitiosTuristicos[index]} '),
        //    subtitle: Text('Sitio Turistico ${index + 1}'),
        //    leading: const Icon(Icons.add_location_rounded),
        //  );
        //},
        //),
      ),
    );
  }
}

List<String> sitiosTuristicos = [
  'Torre Eiffel',
  'Gran Muralla China',
  'Machu Picchu',
  'Coliseo de Roma',
  'Estatua de la Libertad',
  'Taj Mahal',
  'Santorini',
  'Stonehenge',
  'Cataratas del Niágara',
  'Sagrada Familia',
  'Parque Nacional Yellowstone',
  'Pirámides de Giza',
  'Big Ben',
  'Sydney Opera House',
  'Disneyland',
  'Playa de Copacabana',
  'Mesa Verde',
  'Acropolis de Atenas',
  'Catedral de Notre-Dame',
  'Glacier National Park',
  'Palacio de Versalles',
  'La Alhambra',
  'Islas Galápagos',
  'Templo de Karnak',
  'Monte Fuji',
  'Zócalo de Ciudad de México',
  'Castillo de Neuschwanstein',
  'Gran Cañón',
  'Puente de Brooklyn',
  'Museo del Louvre',
  'Santuario de Hōryū-ji',
  'Plitvice Lakes National Park',
  'Kilimanjaro',
  'Cascadas de Iguazú',
  'Río Nilo',
  'Catedral de San Basilio',
  'Parque Güell',
  'Chichén Itzá',
  'Castillo de Edimburgo',
  'Hagia Sophia',
  'Parque Nacional Banff',
  'Estatua del Cristo Redentor',
  'Cerro Torre',
  'Bahía de Halong',
  'Cascadas de Yosemite',
  'Venecia',
  'Burj Khalifa',
  'Lago Ness',
  'Las Torres del Paine',
  'Palacio de Buckingham',
  'Catedral de San Pedro',
  'Ruinas de Tikal',
  'Bahía de Fundy',
  'Jardín de Versalles',
  'Pyramids of Teotihuacan',
  'Monte Rushmore',
  'Museo Británico',
  'Templo de Angkor Wat',
  'Islas Maldivas',
  'Cataratas Victoria',
  'Castillo de Chambord',
  'Parque Nacional Kruger',
  'Murallas de Dubrovnik',
  'Sierra Nevada',
  'Pico de Orizaba',
  'Duna de Pyla',
  'Palacio de Potala',
  'Château de Chenonceau',
  'Canal de Panamá',
  'Islas Fiji',
  'Parque Nacional Torres del Paine',
  'Antelope Canyon',
  'Château de Versailles',
  'Gran Barrera de Coral',
  'Lago Baikal',
  'Castillo de Alhambra',
  'Mercado de Chatuchak',
  'Catedral de Milán',
  'Torre de Pisa',
  'Parque Nacional de los Glaciares',
  'Buda Hill',
  'Playa de Waikiki',
  'Cueva de Altamira',
  'Monumento a la Revolución',
  'Rascacielos Burj Al Arab',
  'Cascadas de Multnomah',
  'Palacio de Hofburg',
  'Catedral de Santa Sofía',
  'Ciudad Perdida de Petra',
  'Gran Cañón del Colorado',
  'Torre de Londres',
  'Isla de Pascua',
  'Cueva de los Tayos',
  'Lago Titicaca',
  'Parque Nacional de la Ciudad de México',
  'Templo de Zeus Olímpico',
  'Mar Muerto',
  'Catedral de Chartres',
  'Pirámides de Chichén Itzá',
  'Parque Nacional de Yosemite',
  'Mural de Diego Rivera',
  'Plaza Mayor de Madrid',
  'Castillo de Neuschwanstein',
  'Cueva de los Cristales',
  'Jardines de Keukenhof',
  'Colinas de Toscana'
];
