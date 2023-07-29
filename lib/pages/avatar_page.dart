import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key})
      : super(key: key); // Corregido el constructor con el parámetro Key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepPurple,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.account_circle_rounded),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/11158171/pexels-photo-11158171.jpeg"),
          ),
          IconButton(
            // Reemplazado el Icon por IconButton para agregar interacción
            onPressed: () {
              // Lógica para la acción del botón de búsqueda
            },
            icon: Icon(Icons.alarm),
          ),
          IconButton(
            // Reemplazado el Icon por IconButton para agregar interacción
            onPressed: () {
              // Lógica para la acción del botón de menú
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          FadeInImage(
            fadeInDuration: Duration(milliseconds: 2000),
            placeholder: NetworkImage(
                "https://images.pexels.com/photos/17463084/pexels-photo-17463084/free-photo-of-ciudad-edificio-arquitectura-negocio.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
            image: NetworkImage(
                "https://images.pexels.com/photos/11158171/pexels-photo-11158171.jpeg"),
          )
        ],
      ),
    );
  }
}
