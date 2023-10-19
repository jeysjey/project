// import 'package:flutter/material.dart';

// class ProfilScreen extends StatelessWidget {
//   const ProfilScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController username = TextEditingController();
//     TextEditingController departemen = TextEditingController();
//     TextEditingController email = TextEditingController();
//     return Scaffold(
//       backgroundColor:  const Color.fromARGB(255, 49, 93, 126),
//       //ignore: avoid_unnecessary_containers
//       body: Container(
//         //padding: const EdgeInsets.only(top: 20.0),
//         child: Stack( 
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.only(left: 10, top: 10),
//               child: InkWell(
//                 onTap: () => Navigator.pop(context),
//                 child: Stack(
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(left: 10, top: 10),
//                       child: InkWell(
//                         onTap: () => Navigator.pop(context),
//                         child: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),
//                       ),
//                     ),
//                     AppBar(
//                       title: const Text("Kembali"),
//                       backgroundColor: const Color.fromARGB(255, 51, 96, 133),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.only(top: 80.0),
//                       width: MediaQuery.of(context).size.width,
//                       height: MediaQuery.of(context).size.height,
//                       decoration: const BoxDecoration(
//                         color: Color.fromARGB(255, 51, 96, 133),
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40),
//                           topRight: Radius.circular(40),
//                         )),
//                       child: Column(
//                         children: <Widget>[
//                           const SizedBox(
//                             height: 50.0,
//                           ),
//                           Container(
//                             padding: const EdgeInsets.only(top: 140.0, left: 20.0, right: 20.0),
//                             child: Column(
//                               children: <Widget>[
//                                 TextField(
//                                   controller: username,
//                                   decoration: const InputDecoration(
//                                     labelText: 'Username',
//                                     labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
//                                     filled: true,
//                                     fillColor: Color.fromARGB(255, 14, 36, 54),
//                                   ),
//                                 ),
//                                 TextField(
//                                   controller: departemen,
//                                   decoration: const InputDecoration(
//                                     labelText: 'Departemen',
//                                     labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
//                                     filled: true,
//                                     fillColor: Color.fromARGB(255, 14, 36, 54),
//                                   ),
//                                 ),
//                                 TextField(
//                                   controller: email,
//                                   decoration: const InputDecoration(
//                                     labelText: 'Email',
//                                     labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
//                                     filled: true,
//                                     fillColor: Color.fromARGB(255, 14, 36, 54),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 30),
//                     Container(
//                       padding: const EdgeInsets.only(top: 5.0, left: 20.0, right: 20.0),
//                       // child: Align(
//                       //   alignment: Alignment.topCenter,
//                         child: Stack(
//                           children: <Widget>[
//                             ClipOval(
//                               child: Image.asset(
//                                 'assets/images/profil.png',
//                                 width: 150,
//                                 height: 150,
//                               ),
//                             ),
//                             Positioned(
//                               bottom: 5,
//                               right: 15.5,
//                               child: Container(
//                                 padding: const EdgeInsets.all(5.0),
//                                 decoration: const BoxDecoration(
//                                   color: Color.fromARGB(255, 51, 96, 133)
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     //),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
