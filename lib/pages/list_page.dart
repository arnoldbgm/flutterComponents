import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListPage extends StatefulWidget {
  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<String> superheroes = [
    "Batman",
    "Superman",
    "Flash",
    "Wonderwoman",
    "Aquaman",
    "Batman"
  ];

  Map<String, dynamic> teamMap = {
    "squadName": "Super hero squad",
    "homeTown": "Metro City",
    "formed": 2016,
    "secretBase": "Super tower",
    "active": true,
    "members": [
      {
        "name": "Batman",
        "image":
            "https://www.lacasadeel.net/wp-content/uploads/2021/11/BATMAN-ENCABEZADO.jpg",
        "age": 29,
        "secretIdentity": "Dan Jukes",
        "powers": ["Radiation resistance", "Turning tiny", "Radiation blast"]
      },
      {
        "name": "Superman",
        "image":
            "https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/styles/980px/public/media/image/2021/06/superman-2354819.jpg",
        "age": 39,
        "secretIdentity": "Jane Wilson",
        "powers": [
          "Million tonne punch",
          "Damage resistance",
          "Superhuman reflexes"
        ]
      },
      {
        "name": "Wonder Woman",
        "image":
            "https://dam.smashmexico.com.mx/wp-content/uploads/2021/10/wonder-woman-historia-comics-escenciales-cover.jpg",
        "age": 1000000,
        "secretIdentity": "Unknown",
        "powers": [
          "Immortality",
          "Heat Immunity",
          "Inferno",
          "Teleportation",
          "Interdimensional travel"
        ]
      }
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
        backgroundColor: Colors.red[400],
        centerTitle: true,
      ),
      // body: ListView.builder(
      //   itemCount: teamMap['members'].length,
      //   itemBuilder: (BuildContext context, int index) {
      //     return ListTile(
      //       title: Text(teamMap['members'][index]['name'].toString()),
      //       subtitle:
      //           Text(teamMap['members'][index]['secretIdentity'].toString()),
      //       leading: CircleAvatar(
      //         backgroundImage:
      //             NetworkImage(teamMap['members'][index]['image'].toString()),
      //       ),
      //       trailing: IconButton(
      //         icon: Icon(Icons.remove_red_eye),
      //         onPressed: () {
      //           showDetailSuperheroe(
      //             imageCircle: teamMap['members'][index]['image'].toString(),
      //             titleName: teamMap['members'][index]['name'].toString(),
      //             array:  teamMap['members'][index]
      //           );
      //           setState(() {});
      //         },
      //       ),
      //     );
      //   },
      // ),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(8),
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 9),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    offset: Offset(4, 4),
                    blurRadius: 12,
                  ),
                ],
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://picsum.photos/500/500?image=$index"),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nombre 01",
                        style:
                            GoogleFonts.montserrat(fontWeight: FontWeight.bold),
                      ),
                      Text("Nombre 02")
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("07/14/2020"),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 2),
                          width: 6,
                          height: 6,
                          decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              shape: BoxShape.circle),
                        ),
                        Text(
                          "In Progress",
                          style: GoogleFonts.montserrat(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }

  void showDetailSuperheroe(
      {required String imageCircle,
      required String titleName,
      required Map<String, dynamic> array}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(imageCircle),
                radius: 50,
              ),
              const SizedBox(
                height: 30,
              ),
              Text(titleName),
              ...array['powers'].map((e) => Text(e)).toList(),
            ],
          ),
        );
      },
    );
  }
}
