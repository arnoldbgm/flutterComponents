import 'package:flutter/material.dart';
import 'package:flutter_application_components/pages/alert_page.dart';
import 'package:flutter_application_components/pages/avatar_page.dart';
import 'package:flutter_application_components/pages/card_page.dart';
import 'package:flutter_application_components/pages/reto_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Inicio de insertar una imagen dentro de un container
              Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://caracoltv.brightspotcdn.com/dims4/default/82da3ad/2147483647/strip/false/crop/1600x1065+0+0/resize/1200x799!/quality/90/?url=http%3A%2F%2Fcaracol-brightspot.s3.amazonaws.com%2F12%2F77%2F11379fd54678956bddb25d33c815%2Ffbm-ysgxoaiuc2o.jpg"),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          offset: Offset(5, 5),
                          blurRadius: 12.0)
                    ]),
              ),
              Text(
                "FLUTTER COMPONENTS",
                style: GoogleFonts.abel(fontSize: 25),
              ),
              SizedBox(
                width: 160,
                child: Divider(
                  thickness: 0.45,
                ),
              ),
              ItemComponentWidget(
                titleText: "Avatar cambiado",
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                titleText: "Alert",
                toPage: AlertPage(),
              ),
              ItemComponentWidget(
                titleText: "Card Page",
                toPage: CardPage(),
              ),
              ItemComponentWidget(
                titleText: "Card Page",
                toPage: RetoCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String titleText;
  Widget toPage;

  ItemComponentWidget({required this.titleText, required this.toPage});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 238, 232, 234),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            offset: Offset(4, 4),
            blurRadius: 12,
          ),
        ],
      ),
      child: ListTile(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => this.toPage));
        },
        leading: Icon(
          Icons.check_circle_outline_outlined,
          color: Colors.blue,
        ),
        title: Text(this.titleText),
        subtitle: Text("Ir al detalle de avatar"),
        trailing: Icon(Icons.chevron_right_rounded),
      ),
    );
  }
}
