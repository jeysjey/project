import 'package:flutter/material.dart';
import 'package:sipp_app/reusable_widgets/reusable_widget.dart';
import 'package:sipp_app/screens/home_screens.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container( 
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 14, 36, 54),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                20, MediaQuery.of(context).size.height * 0.2, 20, 8),
            child: Column(
              children: <Widget>[
                logoWidget("assets/images/login.png"),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  "Login!",
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Silahkan Mengisi Email dan Password Anda",
                    style: TextStyle(fontSize: 14, color: Colors.white)),
                const SizedBox(
                  height: 30,
                ),
                reusableTextField("Masukkan Email", Icons.person_rounded, false,
                    _emailTextController),
                const SizedBox(
                  height: 20,
                ),
                reusableTextField("Masukkan Password", Icons.key_rounded, false,
                    _passwordTextController),
                const SizedBox(
                  height: 30,
                ),
                //forgetPassword(context),
                // signInSignUpButton(context, true, () {
                //   //ignore: undefined_identifier
                //   FirebaseAuth.instance
                //       .signInWithEmailAndPassword(
                //           email: _emailTextController.text,
                //           password: _passwordTextController.text)
                //       .then((value) {
                //     Navigator.push(context, 
                //         MaterialPageRoute(builder: (context) => const HomeScreen()));
                //   }).onError((error, stackTrace) {
                //     //ignore: avoid_print 
                //     print("Error ${error.toString()}");
                //   });
                // }),
                signInSignUpButton(context, true, () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomeScreen()));
                }),
                //signUpOption()
              ],
            ),
          ),
        ),
      ),
    );
  }
  // Row signUpOption() {
  //   return Row(
  //     children: [
  //       const Text("Belum Memiliki Akun?",
  //         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
  //       GestureDetector(
  //         onTap: () {
  //           Navigator.push(context, MaterialPageRoute(builder:(context) => const SignUpScreen()));
  //         },
  //         child: const Text(
  //           "Daftar",
  //           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
  //         ),
  //       )
  //     ],
  //   );
  // }

  // Widget forgetPassword(BuildContext context) {
  //   return Container(
  //     width: MediaQuery.of(context).size.width,
  //     height: 35,
  //     alignment: Alignment.bottomRight,
  //     child: TextButton(
  //       child: const Text(
  //         "Lupa Password?",
  //         style: TextStyle(color: Colors.white70),
  //         textAlign: TextAlign.right,
  //       ),
  //       onPressed:() => Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => const ResetPassword())),
  //     ),
  //   );
  // }
}
