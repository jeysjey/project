//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:sipp_app/screens/confirm_screens.dart';

class Data {
  //static BuildContext? get context => null;

  String item;
  double harga;
  //String harga;
  String qty;
  //Icon naik;
  String naik;
  //CheckboxListTile acc;
  Checkbox acc;
  //ElevatedButton acc;
  //BuildContext context;
  // Icon acc;
  // String acc;

  final allChecked = CheckBoxModal(title: 'ACC');
  final itemChecked = CheckBoxModal(title: '');
  final checkBoxList = [
    CheckBoxModal(title: ''),
    CheckBoxModal(title: ''),
    CheckBoxModal(title: ''),
  ];

  Data({
    required this.item,
    required this.harga,
    required this.qty,
    required this.naik,
    required this.acc,
  });

  bool isChecked = false;

  Data copy({
    String? item,
    double? harga,
    String? qty,
    //Icon? naik,
    String? naik,
    //ElevatedButton? acc,
    //CheckboxListTile? acc,
    Checkbox? acc,
  }) =>
      Data(
        item: item ?? this.item,
        harga: harga ?? this.harga,
        qty: qty ?? this.qty,
        naik: naik ?? this.naik,
        acc: this.acc,
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Data &&
          runtimeType == other.runtimeType &&
          item == other.item &&
          harga == other.harga &&
          qty == other.qty &&
          naik == other.qty &&
          acc == other.acc;

  @override
  int get hashCode =>
      item.hashCode ^
      harga.hashCode ^
      qty.hashCode ^
      naik.hashCode ^
      acc.hashCode;

  get colorPressed => null;

  int? get colIndex => null;

  //get submit => null;

  //set submit(submit) {}
  //(bool submit)

  static List<Data> getData() {
    return <Data>[
      Data(
        item: '',
        //harga: '',
        harga: 0,
        //style
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          //itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              //(value) => onItemChecked(itemChecked),
              (newBool) {
            //setState(() => null);
            setState(() {
              //isChecked = newBool!;
            });
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     onSurface: const Color.fromARGB(255, 45, 83, 114),
        //   ),
        //   onPressed: null,
        //   child: const Text(
        //     "ACC",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          //itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onAllChecked(itemChecked),
              (newBool) {
            setState(() {
              //isChecked = newBool!;
            });
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //       onSurface: const Color.fromARGB(255, 45, 83, 114)),
        //   onPressed: null,
        //   child: const Text(
        //     "ACC",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          // itemChecked.value,
          activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onItemChecked(itemChecked),
              (newBool) {
            setState(() {
              //isChecked = newBool!;
            });
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //       onSurface: const Color.fromARGB(255, 45, 83, 114)),
        //   onPressed: null,
        //   child: const Text(
        //     "ACC",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          // itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onItemChecked(itemChecked),
              (newBool) {
            setState(() {
              //isChecked = newBool!;
            });
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         onSurface: const Color.fromARGB(255, 45, 83, 114)),
        //     onPressed: null,
        //     child: const Text(
        //       "ACC",
        //       style:
        //           TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //     )
        // )
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          // itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onItemChecked(itemChecked),
              (newBool) {
            setState(() {
              //isChecked = newBool!;
            });
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //       onSurface: const Color.fromARGB(255, 45, 83, 114)),
        //   onPressed: null,
        //   child: const Text(
        //     "ACC",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          // itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onItemChecked(itemChecked),
              (newBool) {
            setState(() {
              //isChecked = newBool!;
            });
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     onSurface: const Color.fromARGB(255, 45, 83, 114),
        //   ),
        //   onPressed: null,
        //   child: const Text(
        //     "ACC",
        //     style:
        //         TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        // )
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          // itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onItemChecked(itemChecked),
              (newBool) {
            setState(() {
              //isChecked = newBool!;
            });
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       onSurface: const Color.fromARGB(255, 45, 83, 114),
        //     ),
        //     onPressed: null,
        //     child: const Text(
        //       "ACC",
        //       style:
        //           TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //     )),
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          // itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onItemChecked(itemChecked),
              (newBool) {
            setState(() {
              //isChecked = newBool!;
            });
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //     onSurface: const Color.fromARGB(255, 45, 83, 114),
        //   ),
        //   onPressed: null,
        //   child: const Text(
        //     "ACC",
        //     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        // ),
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          // itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onItemChecked(itemChecked),
              (newBool) {
            setState(() {});
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       //_isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //       onSurface: const Color.fromARGB(255, 45, 83, 114),
        //     ),
        //     onPressed: null,
        //     child: const Text(
        //       "ACC",
        //       style:
        //           TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //     ))
      ),
      Data(
        item: '',
        //harga: '',
        harga: 0,
        qty: '',
        naik: '',
        acc: Checkbox(
          value: null,
          // itemChecked.value,
          //activeColor: Colors.transparent,
          tristate: true,
          onChanged:
              // (value) => onItemChecked(itemChecked),
              (newBool) {
            setState(() {});
          },
        ),
        // CheckboxListTile(
        //   title: Text('ACC'),
        //   value: _isChecked,
        //   onChanged: (bool? newValue) {
        //     setState(() {
        //       // _isChecked = newValue;
        //     });
        //   },
        //   activeColor: Colors.transparent,
        //   checkColor: Colors.white,
        //   tristate: true,
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(
        //       onSurface: const Color.fromARGB(255, 45, 83, 114)),
        //   onPressed: null,
        //   child: const Text(
        //     "ACC",
        //     style:
        //         TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        //   ),
        // )
      ),
    ];
  }

  void remove(Data data) {}

  void confirm(Data data) {}

  bool submit = false;

  bool isButtonActive = true;

  late List<Data> selectedData;

  bool checkSelected() {
    submit = selectedData.isEmpty || isChecked == false ? false : true;
    return submit;
  }

  onItemChecked(CheckBoxModal ckbItem) {
    setState(() {
      ckbItem.value = !ckbItem.value;
    });
  }

  onAllChecked(CheckBoxModal ckbItem) {
    final newValue = !ckbItem.value;
    setState(() {
      ckbItem.value = newValue;
      //all checked list
      //checkBoxList
      itemChecked.forEach((element) {
        element.value = newValue;
      });
    });
  }

  // static getColor(Color color, Color onPressed) {
  //   //ignore: prefer_function_declaraton_over_variablwe
  //   final getColor = (Set<MaterialState> states) {
  //     if (states.contains(MaterialState.pressed)) {
  //       return colorPressed;
  //     } else {
  //       return color;
  //     }
  //   };
  // }

  //onPressed:() => Navigator.of(context!).pop(),

  // Future<List<ExcelSheetData>> getExcelFile(BuildContext context, String item,
  //     String harga, String qty, String naik) async {
  //   FilePickerResult? pickedFile = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['xlsx'],
  //     allowMultiple: false,
  //   );
  //   List<ExcelSheetData> excelList = [];

  // }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);

  static void setState(Null Function() param0) {}
}

class Static {}

class CheckBoxModal {
  late String title;
  late bool value;

  CheckBoxModal({required this.title, this.value = false});

  void forEach(Null Function(dynamic element) param0) {}
}
