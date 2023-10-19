// import 'package:flutter/material.dart';
// import 'package:sipp_app/reusable_widgets/reusable_widget.dart';

// class ResetPassword extends StatefulWidget {
//   const ResetPassword({Key? key}) : super(key: key);

//   @override
//   //ignore: library_private_types_in_public_api
//   _ResetPasswordState createState() => _ResetPasswordState();
// }

// class _ResetPasswordState extends State<ResetPassword> {
//   final TextEditingController _emailTextController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text(
//           "",
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//       ),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: const BoxDecoration(
//           color: Color.fromARGB(255, 14, 36, 54),
//         ),
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.fromLTRB(20, 120, 20, 0),
//             child: Column(
//               children: <Widget>[
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 reusableTextField("Masukkan Email", Icons.mail_rounded, false,
//                     _emailTextController),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 LogoutButton(context, false, () {
//                   // ignore: undefined_identifier
//                   FirebaseAuth.instance
//                       .sendPasswordResetEmail(email: _emailTextController.text)
//                       .then((value) => Navigator.of(context).pop());
//                 })
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
