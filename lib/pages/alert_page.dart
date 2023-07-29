import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertPage extends StatelessWidget {
  void showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // Corregido: Removido paréntesis adicional
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [],
          ),
        );
      },
    );
  }

  void showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext federico) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.white,
          elevation: 0,
          // content: Column(
          //   //Con este metodo la columa toma el maximo permitido
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     Image.network(
          //       "https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Yes_Check_Circle.svg/1024px-Yes_Check_Circle.svg.png",
          //       height: 100,
          //     ),
          //     SizedBox(
          //       height: 10,
          //     ),
          //     Text(
          //       "Flutter Alert",
          //       style: GoogleFonts.poppins(),
          //     ),
          //     SizedBox(
          //       height: 4,
          //     ),
          //     Text(
          //       "Lorem ipsum Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsum",
          //       style: GoogleFonts.poppins(
          //           fontSize: 13, color: Colors.black.withOpacity(0.55)),
          //     ),
          //   ],
          // ),
          title: Text(
            "Careger View",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(),
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.person,
                    size: 50,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 10,
              ),
              Text(
                "Amanda Johnson",
                style: GoogleFonts.poppins(
                  color: Colors.blueGrey,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Rate the care provided Sunday, Jan 9",
                style: GoogleFonts.poppins(
                  color: Colors.black87,
                  fontSize: 10,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.amberAccent),
                  Icon(Icons.star, color: Colors.amberAccent),
                  Icon(Icons.star, color: Colors.amberAccent),
                  Icon(Icons.star, color: Colors.amberAccent),
                  Icon(Icons.star, color: Colors.black54)
                ],
              )
            ],
          ),

          actions: [
            RawMaterialButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.blue, width: 2.0),
              ),
              child: Text(
                "Not Now",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Aceptar"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Alert Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                this.showMyAlert(context);
              },
              child: Text("SHOW ALERT"),
            ),
          ],
        ),
      ),
    );
  }
}
