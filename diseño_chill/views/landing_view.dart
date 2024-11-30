import '../controllers/note_controller.dart';
import 'package:flutter/material.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 700), //Mas leeeeeentoooooo
            width: isOpen ? 210 : 60,
            decoration: BoxDecoration(
              //Cambie el color de fondo, por, no se, podia
              color: isOpen
                  ? const Color.fromARGB(255, 33, 33, 235)
                  : const Color.fromARGB(255, 230, 106, 24),
              border: Border(
                right: BorderSide(
                  color: const Color.fromARGB(255, 47, 141, 204),
                  width: 0.5,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    //Door...xd
                    //Book...xd
                    icon: Icon(isOpen
                        ? Icons.door_sliding_rounded
                        : Icons.book_outlined),
                    color: Colors.grey[800],
                    onPressed: () {
                      setState(() {
                        isOpen = !isOpen;
                      });

                      NoteController().getNotes();
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                _buildMenuItem(
                  Icons.book,
                  "Proyectos",
                ),
                _buildMenuItem(
                  Icons.edit_note_rounded,
                  "Diseños",
                ),
                _buildMenuItem(
                  Icons.switch_access_shortcut_add_rounded,
                  "Compartir",
                ),
                const Spacer(),
                _buildMenuItem(
                  Icons.settings,
                  "Ajsutes",
                  //Jejeje, esta mal escrito adrede
                ),
              ],
            ),
          ),

          // Contenido principal
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Side Hustle',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        //CAMBIO
                        Icons.macro_off_rounded,
                        size: 30,
                      ),
                      Spacer(),
                      Icon(
                        //CAMBIOOO
                        Icons.macro_off_rounded,
                        size: 30,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Share',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      //ADIVINO... OTRO CAMBIOOO
                      Icon(
                        Icons.my_location_rounded,
                        size: 30,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'No creo poder editar otros widgets (sin arruinar la funcionalidad)'
                        ' pero si puedo crear nuevos, cuenta?',
                        style:
                            TextStyle(color: Color.fromARGB(232, 7, 177, 120)),
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Este es para acompletar la regla de 2 widgets,'
                        ' mas vale que cuente pq tuve que reiniciar mis demas cambios',
                        style:
                            TextStyle(color: Color.fromARGB(232, 7, 177, 120)),
                      ),
                      const SizedBox(width: 40),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Widget para los elementos del menú
  Widget _buildMenuItem(IconData icon, String title) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: isOpen ? 210 : 60,
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: Icon(icon, color: Colors.grey[800], size: 24),
              ),
              if (isOpen) ...[
                const SizedBox(width: 10), // Espacio entre icono y texto
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.grey[800],
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
