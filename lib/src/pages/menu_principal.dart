import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Universidad'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[600],
              ),
              child: Text(
                'Menu Principal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.article), // Icono para Noticias
              title: Text('Noticias'),
              onTap: () {
                Navigator.pop(context); // Cierra el menú lateral
                Navigator.pushNamed(context, '/noticias');
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Lista de Tareas'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/tareas');
              },
            ),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Cambio de Monedas'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/cambio_monedas');
              },
            ),
            ListTile(
              leading: Icon(Icons.headset),
              title: Text('PodCast'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/podcast');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Contenido de la página principal
          ],
        ),
      ),
    );
  }
}
