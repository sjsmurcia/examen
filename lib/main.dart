import 'package:flutter/material.dart';
import 'package:flutter_examen/src/pages/cambio_monedas_screen.dart';
import 'package:flutter_examen/src/pages/menu_principal.dart';
import 'package:flutter_examen/src/pages/noticias_screen.dart';
import 'package:flutter_examen/src/pages/podcast_screen.dart';
import 'package:flutter_examen/src/pages/tareas_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación',
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (context) => MainMenu());
          case '/tareas':
            return MaterialPageRoute(builder: (context) => TareasScreen());
          case '/noticias':
            return MaterialPageRoute(builder: (context) => NoticiasScreen());
          case '/cambio_monedas':
            return MaterialPageRoute(
                builder: (context) => CambioMonedasScreen());
          case '/podcast':
            return MaterialPageRoute(builder: (context) => PodcastScreen());
          default:
            return null;
        }
      },
    );
  }
}
