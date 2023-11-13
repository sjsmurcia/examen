import 'package:flutter/material.dart';

class NoticiasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implementa la lógica de la pantalla de noticias aquí
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: Center(
        child: Text('Contenido de noticias aquí'),
      ),
    );
  }
}
