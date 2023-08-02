import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputPage extends StatefulWidget {
  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController _controllerName = new TextEditingController();
  TextEditingController _controllerDate = new TextEditingController();

  String valueAux = "Spiderman";

  bool isInvisible = true;
  String name = "";

  List<String> superHeroes = ["Spiderman", "Batman", "WonderWoman"];

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
              //Editing TextField
              TextField(
                obscureText: isInvisible,
                decoration: InputDecoration(
                  hintText: "Ingrese su contraseña",
                  suffixIcon: IconButton(
                    onPressed: () {
                      isInvisible = !isInvisible;
                      setState(() {});
                    },
                    icon: isInvisible
                        ? const Icon(Icons.remove_red_eye_sharp)
                        : const Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _controllerName,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  label: Text("Ingresar tu nombre"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_controllerName.text);
                },
                child: const Text("Presiona el texto"),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                controller: _controllerDate,
                decoration: const InputDecoration(
                    hintText: "Fecha de nacimiento",
                    suffixIcon: Icon(Icons.date_range)),
                onTap: () {
                  print("prueba de valores");
                  FocusScope.of(context).requestFocus(FocusNode());
                  selectDate();
                },
              ),
              const SizedBox(
                height: 30,
              ),
              DropdownButton(
                value: valueAux,
                hint: const Text("Valores desplegables"),
                items: superHeroes
                    .map((e) => DropdownMenuItem(child: Text(e), value: e))
                    .toList(),
                onChanged: (String? value) {
                  valueAux = value!;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  selectDate() async {
    DateTime? dateSelected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2024),
    );
    if (dateSelected != null) {
      this._controllerDate.text = dateSelected.toString().substring(0, 10);
      setState(() {});
    }
  }

  List<DropdownMenuItem<String>> getSuperheroesData() {
    List<DropdownMenuItem<String>> items = [];
    superHeroes.forEach((element) {
      items.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return items;
  }

  List<DropdownMenuItem<String>> getSuperheroesMap() {
    return superHeroes.map((superhero) {
      return DropdownMenuItem(
        child: Text(superhero),
        value: superhero,
      );
    }).toList();
  }
}
