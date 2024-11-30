import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const HomePrincipal());
}

class HomePrincipal extends StatelessWidget {
  const HomePrincipal ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curriculum vite v1',
      home: Scaffold(
        appBar: AppBar(
          title: const Center( child: Text('Curriculum Vitae V1')),
          backgroundColor: const Color.fromARGB(255, 42, 46, 171),
          foregroundColor: Colors.white, 
        ),
        body: ListView( 
          children: const [ 
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                child: CircleAvatar(
                  radius: 100,
                  backgroundImage: NetworkImage("assets/image/yo.png"), 
                ),
              ),
            ),
            Divider(color: Colors.orange,),
            Card(
              elevation: 10,
              child: ListTile(
                title:const Text("Informacio personal") ,
                leading: const Icon(Icons.person) ,
                trailing:  const Icon(Icons.arrow_forward_ios),
              ),
            )
            
 
          ],

        ),
      ),  
    );
  }
}
