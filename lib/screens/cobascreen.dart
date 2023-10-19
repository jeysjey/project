// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:sipp_app/screens/exit_screens.dart';
// import 'package:sipp_app/screens/home_screens.dart';
// import 'package:http/http.dart' as http;
// //import '../model.dart';

// class CobaScreen extends StatefulWidget {
//   const CobaScreen({Key? key}) : super(key: key);

//   @override
//   State<CobaScreen> createState() => _CobaScreenState();
// }

// class _CobaScreenState extends State<CobaScreen> {
//   List _dataPP = [];

//   void _ambildataPP() async {
//     var res =
//         await http.get(Uri.parse("http://192.168.80.72/sipp/ambildata.php"));

//     setState(() {
//       _dataPP = json.decode(res.body);
//     });
//   }

//   @override
//   void initState() {
//     _ambildataPP();
//     super.initState();
//   }

//   SingleChildScrollView _tabelPP() {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: DataTable(
//           columns: [
//             DataColumn(label: Text("Item")),
//             DataColumn(label: Text("Harga")),
//             DataColumn(label: Text("QTY")),
//             DataColumn(label: Text("Naik")),
//           ],
//           rows: _dataPP.map((item) => DataRow(cells: <DataCell>[
//             DataCell(Text(item["item"])),
//             DataCell(Text(item["harga"])),
//             DataCell(Text(item["qty"])),
//             DataCell(Text(item["naik"])),
//           ])).toList(),
//         )
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Kembali"),
//         backgroundColor: const Color.fromARGB(255, 49, 93, 129),
//       ),
//       backgroundColor: Color.fromARGB(255, 221, 229, 236),
//       body: Container(
//           width: MediaQuery.of(context).size.width,
//           padding: const EdgeInsets.all(8),
//           child: ListView(
//             children: <Widget>[
//               _tabelPP(),
//             ],
//           )),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class CobaScreen extends StatefulWidget {
//   @override
//   _CobaScreenState createState() => _CobaScreenState();
// }

// class _CobaScreenState extends State<CobaScreen> {
//   bool isCheckboxVisible = true;
//   bool isChecked = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Checkbox to Text Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             isCheckboxVisible
//                 ? Checkbox(
//                   value: isChecked,
//                   onChanged: (value) {
//                     setState(() {
//                   isChecked = value!;
//                   });
//                 },
//                 )
//                 : Text(
//                     'ACC',
//                     style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
//                   ),
//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   // Toggle the visibility of the checkbox/text
//                   isCheckboxVisible = !isCheckboxVisible;
//                 });
//               },
//               child: Text('ACC ALL'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CobaScreen extends StatefulWidget {
  @override
  _CobaScreenState createState() => _CobaScreenState();
}

class _CobaScreenState extends State<CobaScreen> {
  bool isCheckboxSelected = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Button Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Checkbox(
              value: isCheckboxSelected,
              onChanged: (value) {
                setState(() {
                  isCheckboxSelected = value ?? false;
                });
              },
            ),
            Text('Select the checkbox'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isCheckboxSelected ? () {
                // Perform action when the button is clicked
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Button Clicked'),
                      content: Text('Button action executed.'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              } : null, // Disable the button if checkbox is not selected
              child: Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}

