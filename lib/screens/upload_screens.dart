// import 'package:flutter/material.dart';
// import 'package:sipp_app/screens/signin_screens.dart';

// class UploadScreen extends StatefulWidget {
//   const UploadScreen({Key? key}) : super(key: key);

//   @override
//   State<UploadScreen> createState() => _UploadScreenState();
// }

// class _UploadScreenState extends State<UploadScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color.fromARGB(255, 14, 36, 54),
//         body: Stack(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 10, bottom: 10),
//               child: InkWell(
//                 onTap: () => Navigator.pop(context),
//                 child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
//               ),
//             ),
//             AppBar(
//               title: const Text("Kembali"),
//               backgroundColor: Color.fromARGB(255, 14, 46, 54),
//             ),
//             Center(
//               child: ElevatedButton(
//                 child: Text("Keluar"),
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

