import '../controllers/note_controller.dart';
import 'package:flutter/material.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  bool isOpen = false; // Estado para abrir/cerrar la barra lateral

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(//Esto lo cambie de Column a Row, evidentemente queda mal, pero ni modo, no se 
      //me ocurrio otro cambio en widget notable que no haga que esto explote profe
        children: [
          // Barra lateral
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: isOpen ? 210 : 60,
            decoration: BoxDecoration(
              // color: Colors.white,
              border: Border(
                right: BorderSide(color: const Color.fromARGB(255, 238, 0, 0), width: 0.5),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    icon: Icon(isOpen ? Icons.arrow_back : Icons.menu),
                    color: Colors.grey[800],
                    onPressed: () {
                      setState(() {
                        isOpen = !isOpen;
                      });

                      NoteController().getNotes();
                    },
                  ),
                ),
                const SizedBox(height: 20),
                _buildMenuItem(
                  Icons.chair_rounded, //Cambio Icono
                  "Proyectos",
                ),
                _buildMenuItem(
                  Icons.edit_note_rounded,
                  "Drafts",
                ),
                _buildMenuItem(
                  Icons.switch_access_shortcut_add_rounded,
                  "Shared with me",
                ),
                const Spacer(),
                _buildMenuItem(
                  Icons.settings,
                  "Settings",
                ),
              ],
            ),
          ),
          // Contenido principal
          const Expanded(
            
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Espacio de Trabajo',
                        style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.keyboard_arrow_down,
                        size: 30,
                      ),
                      Spacer(),
                      Icon(
                        //icono de un link
                        //Je, ya no lo es
                        Icons.bike_scooter,
                        size: 60,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'Bicicleta',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 20),
                      //icono de 3 puntos acostado
                      //Nuevamente, ya no lo es
                      Icon(
                        Icons.man_outlined,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          
        ],
      ),
    );
  }

  // Widget para los elementos del menú
  Widget _buildMenuItem(IconData icon, String title) {
    return Container( //Haber, se supone que era un SingleChildScrollView, pero ni se usaba pq no metemos elementos
                      //Entonces, no se si me lo va a contar como cambio de Widget
      //scrollDirection: Axis.horizontal,
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: isOpen ? 210 : 60,
          child: Row(
            children: [
              SizedBox(
                width: 60,
                height: 60,
                child: Icon(icon, color: const Color.fromARGB(255, 52, 165, 240), size: 24),
              ),
              if (isOpen) ...[
                const SizedBox(width: 10), // Espacio entre icono y texto
                Text(
                  title,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 51, 4, 4),
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
