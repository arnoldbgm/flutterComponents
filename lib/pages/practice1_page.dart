// import 'package:flutter/material.dart';
// import 'package:flutter_application_components/pages/windegts_pratice1.dart';

// class PracticePage1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Color.fromARGB(255, 241, 235, 235),
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             SizedBox(
//               height: 125,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Settings",
//                   style: TextStyle(fontSize: 36, fontWeight: FontWeight.w300),
//                 ),
//                 SizedBox(
//                   height: 125,
//                 ),
//               ],
//             ),
//             // Icono Search
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(right: 25),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [Icon(Icons.search)],
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 25,
//             ),
//             CardSamsung(
//               icon: Icons.wifi,
//               iconColor: Colors.blue,
//               title: "Conections",
//               subtitle: "Wifi - Bluetooth - Flight mode",
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             CardSamsung(
//               icon: Icons.music_note,
//               iconColor: Colors.purpleAccent,
//               title: "Sound and vibration",
//               subtitle: "Sound mode - Ringtone",
//             ),
//             CardSamsung(
//               icon: Icons.folder,
//               iconColor: Colors.redAccent,
//               title: "Notifications",
//               subtitle: "Status bar - Do not disturb",
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             CardSamsung(
//               icon: Icons.sunny,
//               iconColor: Colors.greenAccent,
//               title: "Display",
//               subtitle: "Brigtness- Eye comfor shield - Navigation",
//             ),
//             SizedBox(
//               height: 50,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
