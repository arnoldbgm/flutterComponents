import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatelessWidget {
  const InputPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Input Page",
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextField(
                cursorColor: Colors.red,
                cursorWidth: 3.0,
                textAlign: TextAlign.start,
                maxLength: 20,
                style: GoogleFonts.montserrat(
                  fontSize: 14.0,
                  color: Colors.red,
                ),
                decoration: InputDecoration(
                  hintText: "Ingresa tu correo electrónico",
                  icon: Icon(Icons.mail),
                  prefixIcon: Icon(Icons.location_city),
                  suffixIcon: Icon(Icons.person),
                  labelText: "Correo electrónico",
                  // label: Row(
                  //   children: [
                  //     Icon(
                  //       Icons.access_alarm,
                  //     ),
                  //     Text("Hola"),
                  //   ],
                  // ),
                ),
                onChanged: (String value) {
                  print(value);
                },
                onSubmitted: (String mandarina) {
                  print("WWWWWWWWWWWWWWWWW $mandarina");
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                style: GoogleFonts.manrope(
                  fontSize: 14.0,
                ),
                decoration: InputDecoration(
                  hintText: "Buscar producto...",
                  hintStyle: TextStyle(
                    color: Colors.black.withOpacity(0.4),
                  ),
                  fillColor: Color(0xffF6F7F9),
                  filled: true,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black.withOpacity(0.4),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 14.0,
                    vertical: 14.0,
                  ),
                  focusedBorder: OutlineInputBorder(
                    //UnderlineInputBorder
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                  enabledBorder: OutlineInputBorder(
                    //UnderlineInputBorder
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.07),
                      blurRadius: 12,
                      offset: const Offset(5, 5),
                    ),
                  ],
                ),
                child: TextField(
                  style: GoogleFonts.manrope(
                    fontSize: 14.0,
                  ),
                  decoration: InputDecoration(
                    hintText: "Ingresa tu teléfono...",
                    hintStyle: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(
                      Icons.phone,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14.0,
                      vertical: 14.0,
                    ),
                    focusedBorder: OutlineInputBorder(
                      //UnderlineInputBorder
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      //UnderlineInputBorder
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                  // onChanged: (String value) {
                  //   name = value;
                  // },
                  ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // print(name);
                },
                child: Text(
                  "Iniciar Sesión",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // fistNameController.clear();
                },
                child: Text(
                  "Opciones",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
