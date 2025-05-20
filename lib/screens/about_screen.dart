import 'package:flutter/material.dart';
import 'package:estefany/screens/home_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Acerca de la app",
        style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            );
          },
        ),
        backgroundColor: Color(0xff000000),
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Icon(Icons.note_alt_rounded, color: Color(0xff000000), size: 36),
                    SizedBox(width: 10),
                    Text(
                      "Notas App",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text(
                  "Desarrollada por Estefany, esta aplicación te permite gestionar tus notas de forma sencilla y eficiente.",
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 12),
                const Text(
                  "Funciones principales:",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.deepPurple),
                ),
                const SizedBox(height: 8),
                const BulletPoint(text: "Agregar nuevas notas con título y contenido."),
                const BulletPoint(text: "Editar notas existentes fácilmente."),
                const BulletPoint(text: "Eliminar notas que ya no necesitas."),
                const BulletPoint(text: "Destacar notas importantes para acceder rápidamente."),
                const BulletPoint(text: "Interfaz amigable y moderna."),
                const Spacer(),
                const Center(
                  child: Text(
                    "¡Gracias por usar la app!",
                    style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  final String text;

  const BulletPoint({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontSize: 16)),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}
