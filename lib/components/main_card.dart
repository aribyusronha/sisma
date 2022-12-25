// import 'package:flutter/material.dart';

// class MainCard extends StatelessWidget {
//   final String title;
//   final String subtitle;
//   final String image;
//   final String route;

//   MainCard({this.title, this.subtitle, this.image, this.route});

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.pushNamed(context, route);
//       },
//       child: Card(
//         child: Column(
//           children: <Widget>[
//             Image.asset(image),
//             ListTile(
//               title: Text(title),
//               subtitle: Text(subtitle),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }