import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RetoCard extends StatelessWidget {
  const RetoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF2F6FF),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Start 2 buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: Color(0xff565962),
                    size: 30.0,
                  ),
                  Icon(
                    Icons.calendar_month,
                    color: Color(0xff565962),
                    size: 30.0,
                  ),
                ],
              ),
              // End icons
              // Start Welcome y name
              SizedBox(
                height: 25,
              ),
              Text(
                "Welcome Back!",
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(144, 48, 56, 78),
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.5,
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Dr. Peterson",
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(255, 50, 52, 67),
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.5,
                ),
              ),
              //End Welcome name
              // Start card personalizada
              SizedBox(height: 12,),
              
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 254, 254, 254),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xfDEE1EA),
                          offset: Offset(4, 10),
                          blurRadius: 12)
                    ]),
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(221, 34, 122, 255),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(22),
                              topRight: Radius.circular(22))),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Appoinment Request",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500),
                              ),
                              Icon(
                                Icons.more_vert_rounded,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.watch_later_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "12 JAn 2020, 8am - 10am",
                                style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    //End Part Blue Card
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.2),
                                child: Image.network(
                                  "https://images.pexels.com/photos/842980/pexels-photo-842980.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Louis",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.black.withOpacity(0.76),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    SizedBox(
                                      height: 1.2,
                                    ),
                                    Text(
                                      "Patterson",
                                      style: GoogleFonts.montserrat(
                                          color: Colors.black.withOpacity(0.76),
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.info,
                                color: Color.fromARGB(255, 217, 224, 249),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(221, 34, 122, 255),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text("ACCEPT"),
                                ),
                              ),
                              SizedBox(width: 8), // Espacio entre los botones
                              Expanded(
                                flex: 1,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(150, 238, 238, 244),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "DECLINE",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(
                                            0.5)), // Color del texto en negro
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              // End card personalizado
              Text(
                "Next Appointmets",
                style: GoogleFonts.montserrat(
                  color: Color.fromARGB(144, 48, 56, 78),
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.3,
                ),
              ),
              //Start status cards
              ContainerWidgetCustome(
                imagen:
                    "https://images.pexels.com/photos/1396870/pexels-photo-1396870.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                nombre: "Dorothy Nelson",
                subtitle: "09 Jan 2020, 8am - 10am",
              ),
              SizedBox(
                height: 12,
              ),
              ContainerWidgetCustome(
                imagen:
                    "https://images.pexels.com/photos/2112728/pexels-photo-2112728.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                nombre: "Carl Pape",
                subtitle: "09 Jan 2020, 8am - 10am",
              ),
              SizedBox(
                height: 12,
              ),

              ContainerWidgetCustome(
                imagen:
                    "https://images.pexels.com/photos/3228895/pexels-photo-3228895.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                nombre: "Ora Murray",
                subtitle: "09 Jan 2020, 8am - 10am",
              ),
              // End status cards
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerWidgetCustome extends StatelessWidget {
  String nombre;
  String subtitle;
  String imagen;

  ContainerWidgetCustome(
      {required this.nombre, required this.subtitle, required this.imagen});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.2),
            child: Image.network(
              this.imagen,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.nombre,
                  style: GoogleFonts.montserrat(
                    color: Colors.black.withOpacity(0.75),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  this.subtitle,
                  style: GoogleFonts.montserrat(
                    color: Colors.black.withOpacity(0.45),
                    fontSize: 13.5,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.more_vert_rounded,
          )
        ],
      ),
    );
  }
}
