import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.anaheimTextTheme(),
      ),
      home: Scaffold(
        body: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Todos los iconos cambiados
                botton(Icons.precision_manufacturing, 'Proyectos', () {}),
                botton(Icons.directions_boat_filled_sharp, 'Diseño', () {}),
                botton(Icons.handshake, 'Compartir',
                    () {}),
                const Spacer(),
                botton(Icons.airline_seat_flat_angled, 'Ajustes', () {}),
                botton(Icons.airline_seat_flat_angled, 'Invitar miembros', () {}),
                botton(Icons.airline_seat_individual_suite_rounded , 'Nuevo Diseño', () {}),
                botton(Icons.military_tech_rounded, 'Nuevo Proyecto', () {}),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Tablero de Trabajo',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.keyboard_arrow_down_rounded,
                        size: 35,
                      ),
                      SizedBox(width: 800),
                      Icon(Icons.pets),
                      SizedBox(width: 20),
                      Text('Compartir'),
                      SizedBox(width: 20),
                      Icon(Icons.mosque_rounded),
                      //
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                      const SizedBox(width: 40),
                      nota(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
//Es como crear un elemento que vamos a reutilizar
  nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(20),
      height: 300,
      width: 200,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text('Hoja Random n'),
            ],
          ),
          const SizedBox(height: 20),
          const Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                    'No soy fan de escribir texto aleatorio asi porque si, principalmente porque no es como si mi mente pare de pensar tonterias, entonces soy perfectamente capaz de llenar de basura este sitio por mi propia cuenta'),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.grey[100]),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: Text(
                    'Editar',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  InkWell botton(IconData icon, String text, Function onPressed) {
    return InkWell(
      onTap: () {
        onPressed();
        print(text);
      },
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}
