import 'package:flutter/material.dart';
import 'package:sipp_app/screens/confirm_screens.dart';
import 'package:sipp_app/screens/exit_screens.dart';
import 'package:sipp_app/screens/profil_screens.dart';
import 'package:sipp_app/screens/cobascreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isDisable = true;

//method for enable and disable button2
  void setButton() {
    if (isDisable) {
      isDisable = false;
    } else {
      isDisable = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halo! Pengguna"),
        backgroundColor: const Color.fromARGB(255, 14, 36, 54),
      ),
      backgroundColor: const Color.fromARGB(255, 14, 36, 54),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const UserAccountsDrawerHeader(
              accountName: Text(
                "Sistem Konfirmasi Purchasing",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                "PT Timur Megah Steel",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ListTile(
            //   leading: const Icon(Icons.person_rounded,
            //       color: Color.fromARGB(255, 14, 36, 54)),
            //   title: const Text(
            //     "Profil",
            //     style: TextStyle(
            //         color: Color.fromARGB(255, 14, 36, 54),
            //         fontWeight: FontWeight.bold),
            //   ),
            //   onTap: () {
            //     Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const ProfilScreen()));
            //   },
            // ),
            // const SizedBox(
            //   height: 10,
            // ),
            ListTile(
              leading: const Icon(Icons.home_rounded,
                  color: Color.fromARGB(255, 14, 36, 54)),
              title: const Text(
                "Menu Utama",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 36, 54),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.logout_rounded,
                  color: Color.fromARGB(255, 14, 36, 54)),
              title: const Text(
                "Keluar",
                style: TextStyle(
                    color: Color.fromARGB(255, 14, 36, 54),
                    fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ExitScreen()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                "Sistem Purchasing PT Timur Megah Steel",
                textAlign: TextAlign.center,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 50),
            Card(
              color: const Color.fromARGB(255, 51, 96, 133),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ConfirmScreen()));
                  setState(() {
                    setButton();
                  });
                },
                splashColor: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/konfirm.png',
                        fit: BoxFit.fitWidth,
                        width: 160,
                        height: 160,
                      ),
                      const Text(
                        "Konfirmasi PP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 14, 36, 54),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Card(
              color: Color.fromARGB(255, 51, 96, 133),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CobaScreen()));
                },
                splashColor: Colors.white,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/download.png',
                      fit: BoxFit.fitWidth,
                      width: 100,
                      height: 100,
                    ),
                    Text(
                      "Coba",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 14, 36, 54),
                      ),
                    )
                  ],
                ),
              ),
            ),
            // SizedBox(height: 15),
            // Card(
            //   color: Color.fromARGB(255, 51, 96, 133),
            //   child: InkWell(
            //     onTap: () {
            //       Navigator.push(context, MaterialPageRoute(builder: (context) =>  UploadScreen()));
            //     },
            //     splashColor: Colors.white,
            //     child: Column(
            //       children: [
            //         Image.asset(
            //           'assets/images/upload.png',
            //           fit: BoxFit.fitWidth,
            //           height: 100,
            //           width: 100,
            //         ),
            //         Text(
            //           "Upload Data PP",
            //           style: TextStyle(
            //             fontSize: 17.0,
            //             fontWeight: FontWeight.bold,
            //             color: Color.fromARGB(255, 14, 36, 54),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
