// import 'package:flutter/material.dart';
// import 'package:sipp_app/reusable_widgets/reusable_widget.dart';

// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);

//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }

// class _SignUpScreenState extends State<SignUpScreen> {
//   final TextEditingController _usernameTextController = TextEditingController();
//   final TextEditingController _emailTextController = TextEditingController();
//   final TextEditingController _passwordTextController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text(
//           "Daftar",
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
//                 reusableTextField("Masukkan Username", Icons.person_rounded,
//                     false, _usernameTextController),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 reusableTextField("Masukkan Email", Icons.mail_rounded, false,
//                     _emailTextController),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 reusableTextField("Masukkan Password", Icons.key_rounded, false,
//                     _passwordTextController),
//                 const SizedBox(
//                   height: 20,
//                 ),
//                 signInSignUpButton(context, false, () {
//                   //ignore: undefined_identifier
//                   FirebaseAuth.instance
//                       .createUserWithEmailAndPassword(
//                           email: _emailTextController.text,
//                           password: _passwordTextController.text)
//                       .then((value) {
//                     //ignore: avoid_print
//                     print("Buat Akun Baru");
//                   }).onError((error, stackTrace) {
//                     //ignore: avoid_print
//                     print("Error ${error.toString()}");
//                   });
//                 })
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
