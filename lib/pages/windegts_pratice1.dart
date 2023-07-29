// import 'package:flutter/material.dart';

// class CardSamsung extends StatelessWidget {
//   String title;
//   String subtitle;
//   IconData icon;
//   Color iconColor;

//   CardSamsung({
//     required this.title,
//     required this.subtitle,
//     required this.icon,
//     required this.iconColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(5.0),
//       child: Container(
//         height: 75,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(15),
//           color: Colors.white,
//         ),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(1),
//                     decoration: BoxDecoration(
//                       color: this.iconColor,
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     child: Icon(
//                       this.icon,
//                       color: Colors.white,
//                       size: 30,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       this.title,
//                       style:
//                           TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                     ),
//                     Text(
//                       this.subtitle,
//                       style: TextStyle(color: Colors.black54),
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
