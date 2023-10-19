import 'package:flutter/material.dart';
import 'package:sipp_app/screens/signin_screens.dart';

class ExitScreen extends StatefulWidget {
  const ExitScreen({Key? key}) : super(key: key);

  @override
  State<ExitScreen> createState() => _ExitScreenState();
}

class _ExitScreenState extends State<ExitScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea( 
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 51, 96, 133),
        body: Stack(
          children: <Widget>[ 
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: InkWell(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            AppBar(
              title: const Text("Kembali"),
              backgroundColor: const Color.fromARGB(255, 14, 36, 54),
            ),
            // SizedBox(height: 20),
            // Text(
            //   "Apakah Anda Yakin Untuk Keluar dari Sistem?", 
            //   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            // ),
            const SizedBox(height: 20),
            AlertDialog(
              backgroundColor: const Color.fromARGB(255, 49, 93, 129),
              title: const Text(
                'Keluar', 
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              content: const Text(
                'Apakah Anda Yakin Untuk Keluar Dari Sistem?', 
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
              ),
              actions: [
                ElevatedButton(
                  // style: ButtonStyle(
                  //   overlayColor: ,
                  // ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    "Tidak", 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
                ElevatedButton(
                  // style: ButtonStyle(
                  //   foregroundColor: getColor(Colors.white, cosnt Color.fromARGB(255, 14, 36, 54)),
                  //   backgroundColor: getColor(cosnt Color.fromARGB(255, 14, 36, 54), Colors.white),
                  // ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInScreen()));
                  }, 
                  child: const Text(
                    "Ya", 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
            
            // Center(
            //   child: ElevatedButton(
            //     child: Text("Keluar"),
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(
            //         builder: (context) => SignInScreen()));
            //     },
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
