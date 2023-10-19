// ignore_for_file: avoid_print, non_constant_identifier_names, prefer_typing_uninitialized_variables, unused_element

// import 'dart:html';
// import 'dart:io';

import 'dart:html';

import 'package:excel/excel.dart' hide Data;
import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'data.dart';
import 'package:flutter/services.dart';

class ConfirmScreen extends StatefulWidget {
  //ignore: use_key_in_widget_constructors
  const ConfirmScreen() : super();

  @override
  State<ConfirmScreen> createState() => _ConfirmScreenState();
}

class _ConfirmScreenState extends State<ConfirmScreen> {
  late List<List<dynamic>> _data = [];
  String? filePath;
  late List<Data> data;
  late List<Data> selectedData;
  late bool sort;
  bool isButtonActive = true;
  // bool _isButtonDisabled;
  bool isChecked = false;
  bool submit = false;
  final bool _isChecked = false;
  late final double? columnSpacing;
  late final double? dataRowMaxHeight;
  late final double? dataRowMinHeight;

  var _sortColumnIndex;
  var _sortAscending;

  //var columnWidth;
  double? get dataRowHeight =>
      dataRowMinHeight == dataRowMaxHeight ? dataRowMinHeight : null;
  // int _counter = 0;
  //final _statesController = MaterialStatesController();

  get selected => null;

  //get isDisable => null;

  var isDisable = true;

  ComputeCallback<dynamic, Excel>? get parseExcelFile => null;

  bool? get b => null;

  get onChanged => null;

  get value => null;

  get icon => null;

  get onPressed => null;

  //bool checkbox1 = false;

  //bool checkbox2 = false;

  //double columnWidth = 200;
  //double initX = 0;

  // final allChecked = CheckBoxModal(title: 'ACC');
  // final itemChecked = CheckBoxModal(title: '');
  // final checkBoxList = [
  //   CheckBoxModal(title: ''),
  //   CheckBoxModal(title: ''),
  //   CheckBoxModal(title: ''),
  // ];

  //get columnWidth => null;

  get newWidth => null;

  //set initX(double initX) {}

  //get isChecked => null;

  //get submit => null;

  //set submit(submit) {}
  //(bool submit)

  //get colorPressed => null;

  @override
  void initState() {
    sort = false;
    selectedData = [];
    data = Data.getData();
    super.initState();
    // setState(() {
    //   _data = _generateData().cast<List>();
    // });
    // _isButtonDisabled = false;
  }

  // void _incrementCounter() {
  //   setState(() {
  //     _isButtonDisabled = true;
  //     _counter++;
  //   });
  // }

  bool ischeckbox1 = false;
  bool ischeckbox2 = false;
  bool ischeckbox3 = false;

  bool isCheckboxVisible = true;
  bool ischecked = false;

  onSortColum(int columnIndex, bool ascending) {
    setState(() {
      if (columnIndex == 0) {
        if (ascending) {
          data.sort((a, b) => a.item.compareTo(b.item));
        } else {
          data.sort((a, b) => b.item.compareTo(a.item));
        }
        //data.sort((a, b) => a.acc.compareTo(b.acc));
        //} else {
        //data.sort((a, b) => b.acc.compareTo(a.acc));
        //}
      }
    });
  }

  // onSortColumn(int columnIndex, bool ascending) {
  //   setState(() {
  //     if (columnIndex == 0) {
  //       if (ascending) {
  //         data.sort((a, b) => a.acc.compareTo(b.acc));
  //       } else {
  //         data.sort((a, b) => b.acc.compareTo(a.acc));
  //       }
  //     }
  //   });
  // }

  onSelectedRow(bool selected, Data data) async {
    setState(() {
      if (selected) {
        selectedData.add(data);
      } else {
        selectedData.remove(data);
      }
    });
  }

  // onSelectedRow(bool selected, Data data) async {
  //   setState(() {
  //     if (selected) {
  //       selectedData.add(data);
  //     } else if(selected) {
  //       selectedData.remove(data);
  //     } else {
  //       selectedData.
  //     }
  //   });
  // }

  //method for enable and disable button2
  void setButton() {
    if (isDisable) {
      isDisable = false;
    } else {
      isDisable = true;
    }
  }

  void openFiles() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    if (resultFile != null) {
      PlatformFile file = resultFile.files.first;
      print(file.name);
      print(file.bytes);
      print(file.extension);
      print(file.path);
    } else {
      //do something here if the user canceled the picker
    }
  }

  // bool checkSelected() {
  //   submit = selectedData.isEmpty || isChecked == false ? false : true;
  //   return submit;
  // }

  // changedcolorSelected() async {
  //   setState(() {
  //     if (selectedData.isNotEmpty) {
  //       List<Data> temp = [];
  //       temp.addAll(selectedData);
  //       for (Data data in temp) {
  //         data.
  //       }
  //     }
  //   });
  // }

  void _pickFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    //if no file is picked
    if (result == null) return;
    // we will log the name, size, and path of the
    // first picked file (if multiple are selected)
    print(result.files.first.name);
    filePath = result.files.first.path!;

    final input = File(filePath!).openRead();
    final fields =
        await input.transform(utf8.decoder).tranform(ExcelSheetData()).toList();
    print(fields);

    setState(() {
      _data = fields;
    });
  }

  //Future<List<ExcelSheetData>>
  // Future<List<ExcelSheetData>?> getExcelFile(BuildContext context, String item,
  //     String harga, String qty, String naik) async {
  //   FilePickerResult? pickedFile = await FilePicker.platform.pickFiles(
  //     type: FileType.custom,
  //     allowedExtensions: ['xlsx'],
  //     allowMultiple: false,
  //   );
  //   List<ExcelSheetData> excelList = [];
  //   int? itemIndex;
  //   int? hargaIndex;
  //   int? qtyIndex;
  //   int? naikIndex;

  //   if (pickedFile != null) {
  //     setAddDataLoadingTrue();
  //     var file = pickedFile.paths.single;
  //     var bytes = await File(file).readAsBytes();
  //     Excel excel = await compute(parseExcelFile!, bytes);
  //     for (var table in excel.tables.keys) {
  //       for (var row in excel.tables[table]!.rows) {
  //         // item variable is for Name of Columns Heading for Item
  //         if (row?.any((element) => element?.value?.toString() == item) ??
  //             false) {
  //           Data data = row?.firstWhere(
  //               (element) => element?.value?.toString().toLowerCase() == item);
  //           itemIndex = data.colIndex;
  //         }
  //         //
  //         if (row?.any((element) => element?.value?.toString() == harga) ??
  //             false) {
  //           Data data = row.firstWhere(
  //               (element) => element?.value?.toString().toLowerCase() == harga);
  //           hargaIndex = data.colIndex;
  //         }
  //         //
  //         if (row?.any((element) => element?.value?.toString() == qty) ??
  //             false) {
  //           Data data = row?.firstWhere((element) => element?.value?.toString().toLowerCase() == qty);
  //           qtyIndex = data.colIndex;
  //         }
  //         //
  //         if (row?.any((element) => element?.value?.toString() == naik) ??
  //             false) {
  //           Data data = row?.firstWhere((element) => element?.value?.toString().toLowerCase() == qty);
  //           naikIndex = data.colIndex;
  //         }
  //         if (itemIndex != null &&
  //             hargaIndex != null &&
  //             qtyIndex != null &&
  //             naikIndex != null) {
  //           if (row[itemIndex]?.value.toString().toLowerCase() !=
  //                   item.toLowerCase() &&
  //               row[hargaIndex]?.value.toString().toLowerCase() !=
  //                   harga.toLowerCase() &&
  //               row[qtyIndex]?.value.toString().toLowerCase() !=
  //                   qty.toLowerCase() &&
  //               row[naikIndex]?.value.toString().toLowerCase() !=
  //                   naik.toLowerCase()) {
  //             excelList.add(
  //               ExcelSheetData(
  //                   item: row[itemIndex]?.value.toString(),
  //                   harga: row[hargaIndex]?.value.toString(),
  //                   qty: row[qtyIndex]?.value.toString(),
  //                   naik: row[naikIndex]?.value.toString(),
  //               ),
  //             );
  //           }
  //         }
  //       }
  //       setAddDataLoadingFalse();
  //       return excelList;
  //     }
  //     //return null;
  //   }
  //   return null;
  // }

  // SingleChildScrollView dataBody() {
  //   var item;
  //   return SingleChildScrollView(
  //     scrollDirection: Axis.vertical,
  //     //child: FittedBox(),
  //     child: DataTable(
  //         //sortAscending: _sortAscending,
  //         //sortColumnIndex: _sortColumnIndex,
  //         //dataRowHeight: 50,
  //         //headingRowHeight: 20,
  //         // headingRowColor: Color.fromARGB(255, , g, b),
  //         columns: [
  //           const DataColumn(
  //             label: const Text(
  //               "Item",
  //               style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //               textAlign: TextAlign.left,
  //             ),
  //             numeric: false,
  //             tooltip: "This is Item",
  //             // onSort: (columnIndex, ascending) {
  //             //   setState(() {
  //             //     sort = !sort;
  //             //   });
  //             //   onSortColum(columnIndex, ascending);
  //             // },
  //             //label:
  //                 // Stack(
  //                 //   children: [
  //                 //     Container(
  //                 //       child: Text('Item'), // Header Text
  //                 //       width: columnWidth,
  //                 //       constraints: BoxConstraints(minWidth: 100),
  //                 //     ),
  //                 //     Positioned(
  //                 //       right: 0,
  //                 //       child: GestureDetector(
  //                 //         onPanStart: (details) {
  //                 //           setState(() {
  //                 //             initX = details.globalPosition.dx;
  //                 //             columnWidth = newWidth;
  //                 //           });
  //                 //         },
  //                 //         child: Container(
  //                 //           width: 10,
  //                 //           height: 10,
  //                 //           decoration: BoxDecoration(
  //                 //             color: Colors.blue.withOpacity(1),
  //                 //             shape: BoxShape.circle,
  //                 //           ),
  //                 //         ),
  //                 //       )
  //                 //     ),
  //                 //   ]
  //                 // ),
  //             //     Row(
  //             //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             //   children: [
  //             //     Align(
  //             //       alignment: Alignment.centerLeft,
  //             //     ),
  //             //     Text(
  //             //       'Item',
  //             //       style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //             //       //textAlign: TextAlign.left,
  //             //     ),
  //             //   ],
  //             // ),
  //             // numeric: false,
  //             // tooltip: "this is Item",
  //             // onSort: (columnIndex, ascending) {
  //             //   setState(() {
  //             //     sort = !sort;
  //             //   });
  //             //   onSortColum(columnIndex, ascending);
  //             // },
  //           ),
  //           DataColumn(
  //             label: Text(
  //               "Harga",
  //               style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //               textAlign: TextAlign.right,
  //             ),
  //             // label: Row(
  //             //   children: [
  //             //     Align(alignment: Alignment.centerRight,),
  //             //     Text(
  //             //       'Harga',
  //             //       style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //             //       //textAlign: TextAlign.end,
  //             //     ),
  //             //   ],
  //             // ),
  //             numeric: true,
  //             tooltip: 'This is Harga',
  //             // label: Text(
  //             //   "Harga",
  //             //   style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //             //   textAlign: TextAlign.left,
  //             // ),
  //             // numeric: false,
  //             // tooltip: "This is Harga",
  //           ),
  //           DataColumn(
  //             label: Text(
  //               "QTY",
  //               style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //               textAlign: TextAlign.right,
  //             ),
  //             // label: Row(
  //             //   children: [
  //             //     Align(alignment: Alignment.centerRight),
  //             //     Text(
  //             //       'QTY',
  //             //       style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //             //       //textAlign: TextAlign.end,
  //             //     ),
  //             //   ],
  //             // ,
  //             numeric: true,
  //             tooltip: "This is QTY",
  //             // label: Text(
  //             //   "QTY",
  //             //   style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //             //   textAlign: TextAlign.left,
  //             // ),
  //             // numeric: false,
  //             // tooltip: "This is QTY",
  //           ),
  //           DataColumn(
  //             // label: Row(
  //             //   children: [
  //             //     Align(alignment: Alignment.center),
  //             //     Text(
  //             //       'Naik',
  //             //       style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //             //       //textAlign: TextAlign.center,
  //             //     )
  //             //   ],
  //             // ),
  //             // numeric: false,
  //             // tooltip: "This is Naik",
  //             label: Text(
  //               "Naik",
  //               style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //               textAlign: TextAlign.center,
  //             ),
  //             numeric: false,
  //             tooltip: "This is Naik",
  //           ),
  //           DataColumn(
  //             label: Row(
  //               children: [
  //                 Align(alignment: Alignment.center),
  //                 Text(
  //                   allChecked.title,
  //                   style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //                   //textAlign: TextAlign.center,
  //                 ),
  //                 Checkbox(
  //                   value: allChecked.value,
  //                   onChanged: (value) => onAllChecked(allChecked),
  //                 ),
  //               ],
  //             ),
  //             // Text(
  //             //   "ACC",
  //             //   style: TextStyle(color: Color.fromARGB(255, 14, 36, 54)),
  //             //   textAlign: TextAlign.center,
  //             //   key: Icon(Icons.check_box_outline_blank_rounded).key,
  //             // ),
  //             // numeric: false,
  //             // tooltip: "This is ACC",
  //             // icon(Icons.check_box_outline_blank_rounded),
  //             //tooltip: (onSelectedRow(b!, data) is String ?),
  //             // onSort: (columnIndex, ascending) {
  //             //   setState(() {
  //             //     sort = !sort;
  //             //   });
  //             //   onSortColumn(columnIndex, ascending);
  //             // },
  //           ),
  //         ],
  //         rows: data
  //             .map(
  //               (data) => DataRow(
  //                   selected: selectedData.contains(data),
  //                   onSelectChanged: (b) {
  //                     print("Onselect");
  //                     onSelectedRow(b!, data);
  //                     // isDisable
  //                     //     ? () {
  //                     //         // (selectedData.isNotEmpty)
  //                     //         //     ? () => _addNewPair(
  //                     //         //     : null;
  //                     //         setState(() {
  //                     //           setButton();
  //                     //           (selectedData.isNotEmpty)
  //                     //             ? () => _addNewPair()
  //                     //             : null;
  //                     //         });
  //                     //       }
  //                     //     : null;
  //                     final isButtonActive = selectedData.isNotEmpty;
  //                     setState(() => this.isButtonActive = isButtonActive);
  //                   },
  //                   cells: [
  //                     //Align(alignment: ,),
  //                     DataCell(
  //                       Text(data.item),
  //                       // ConstrainedBox(
  //                       //   constraints: BoxConstraints(maxWidth: columnWidth),
  //                       //   child: Text(data.item),
  //                       // ),
  //                       //Align(),
  //                       // Text(data.item)
  //                       // SizedBox(
  //                       //   height: 75,
  //                       //   child: Text(data.item),
  //                       // ),
  //                       // onTap: () {
  //                       // //ignore: avoid_print
  //                       // print('Selected ${data.item}');
  //                       // }
  //                     ),
  //                     // DataCell(ConstrainedBox(
  //                     //     constraints: BoxConstraints(maxWidth: 250),
  //                     //     child:
  //                     //         Text('halo', overflow: TextOverflow.ellipsis))),
  //                     // DataCell(Text(data.harga.toString())),
  //                     // DataCell(ConstrainedBox(
  //                     //     constraints: BoxConstraints(maxWidth: 250),
  //                     //     child:
  //                     //         Text('halo', overflow: TextOverflow.ellipsis))),
  //                     // DataCell(Text(data.qty)),
  //                     // DataCell(ConstrainedBox(
  //                     //     constraints: BoxConstraints(maxWidth: 150),
  //                     //     child: Text('', overflow: TextOverflow.ellipsis))),
  //                     DataCell(Text(
  //                       data.harga.toString(),
  //                       textAlign: TextAlign.right,
  //                     )
  //                         // SizedBox(
  //                         //   height: 15,
  //                         //   child: Text(
  //                         //     data.harga.toString(),
  //                         //     textAlign: TextAlign.right,
  //                         //   ),
  //                         //   //toString()
  //                         // ),
  //                         ),
  //                     DataCell(
  //                       Text(
  //                         data.qty,
  //                         textAlign: TextAlign.right,
  //                       ),
  //                       // SizedBox(
  //                       //   width: 15,
  //                       //   child: Text(
  //                       //     data.qty,
  //                       //     textAlign: TextAlign.right,
  //                       //   ),
  //                       // ),
  //                     ),
  //                     DataCell(Text(data.naik)
  //                         // SizedBox(
  //                         //   height: 5,
  //                         //   child: Text(data.naik),
  //                         // ),
  //                         ),
  //                     DataCell(
  //                       Checkbox(
  //                         //value: allChecked.value,
  //                         value: allChecked.value,
  //                         //activeColor: Colors.transparent,
  //                         tristate: true,
  //                         onChanged: (value) => onAllChecked(allChecked),
  //                         // onChanged: (value) => onItemChecked(itemChecked),
  //                       ),
  //                       // CheckboxListTile(
  //                       //       title: const Text(
  //                       //         "ACC",
  //                       //         style: TextStyle(
  //                       //             color: Colors.white,
  //                       //             fontWeight: FontWeight.bold, ),
  //                       //       ),
  //                       //       value: _isChecked,
  //                       //       onChanged: (bool? newValue) {
  //                       //         setState(() {
  //                       //           _isChecked = newValue!;
  //                       //         });
  //                       //       },
  //                       //       activeColor: Colors.transparent,
  //                       //       checkColor: Colors.white,
  //                       //       subtitle: const Text('Konfirmasi'),
  //                       //       controlAffinity: ListTileControlAffinity.leading,
  //                       //       tristate: true,
  //                       //     ),
  //                       // ElevatedButton(
  //                       //     style: ElevatedButton.styleFrom(
  //                       //         onSurface:
  //                       //             const Color.fromARGB(255, 45, 83, 114)),
  //                       //     //ignore: sort_child_properties_last
  //                       //     child:
  //                       //     CheckboxListTile(
  //                       //       title: const Text(
  //                       //         "ACC",
  //                       //         style: TextStyle(
  //                       //             color: Colors.white,
  //                       //             fontWeight: FontWeight.bold),
  //                       //       ),
  //                       //       value: _isChecked,
  //                       //       onChanged: (bool? newValue) {
  //                       //         setState(() {
  //                       //           _isChecked = newValue!;
  //                       //         });
  //                       //       },
  //                       //       activeColor: Colors.transparent,
  //                       //       checkColor: Colors.white,
  //                       //       tristate: true,
  //                       //     ),
  //                       //     //ignore: avoid_returning_null_for_void
  //                       //     onPressed: null
  //                       //     // isDisable ? () => null : clickButton(),
  //                       //     // (selectedData.isNotEmpty)
  //                       //     //     ? () => isButtonActive = false
  //                       //     //     : null
  //                       //     // isButtonActive
  //                       //     //     ? () {
  //                       //     // if(isButtonActive = false) {
  //                       //     //   (selectedData.isNotEmpty)
  //                       //     //       ? () => _addNewPair()
  //                       //     //       : null;
  //                       //     // } else {
  //                       //     //   (selectedData.isEmpty)
  //                       //     //       ? () => _addNewPair()
  //                       //     //       : null;
  //                       //     // }
  //                       //     //     setState(() => isButtonActive = false);
  //                       //     //     (selectedData.isNotEmpty)
  //                       //     //         ? () => _addNewPair()
  //                       //     //         : null;
  //                       //     //   }
  //                       //     // : null,
  //                       //     ),
  //                     ),
  //                   ]),
  //               // DataRow(cells: [
  //               //   DataCell(Text(data.))
  //               // ]),
  //             )
  //             .toList()
  //           ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kembali"),
        backgroundColor: const Color.fromARGB(255, 49, 93, 129),
      ),
      backgroundColor: const Color.fromARGB(255, 221, 233, 243),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Table(
                border: TableBorder.all(color: Colors.white),
                columnWidths: const {
                  0: FractionColumnWidth(0.1),
                  1: FractionColumnWidth(0.3),
                  2: FractionColumnWidth(0.2),
                  3: FractionColumnWidth(0.1),
                  4: FractionColumnWidth(0.1),
                  5: FractionColumnWidth(0.2),
                },
                children: [
                  TableRow(
                    //ignore: prefer_const_constructors
                    decoration: BoxDecoration(color: Color.fromARGB(255, 189, 212, 231)),
                    children: [
                      TableCell(
                        child: Checkbox(
                          value: ischeckbox1,
                          onChanged: (value) {
                            setState(() {
                              ischeckbox1 = value!;
                              if (value == true) {
                                ischeckbox2 = false;
                              }
                            });
                          }
                        ),
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Item',
                            style: TextStyle(
                              color: Color.fromARGB(255, 14, 36, 54),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Harga',
                            style: TextStyle(
                              color: Color.fromARGB(255, 14, 36, 54),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'QTY',
                            style: TextStyle(
                              color: Color.fromARGB(255, 14, 36, 54),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ),
                      const TableCell(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Naik',
                            style: TextStyle(
                              color: Color.fromARGB(255, 14, 36, 54),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: ListTile(
                          leading: Checkbox(
                            value: ischeckbox2,
                            onChanged: (value) {
                              setState(() {
                                ischeckbox2 = value!;
                                if (value == true) {
                                  ischeckbox1 = false;
                                }
                              });
                            },
                          ),
                          title: Text(
                            'ACC',
                            style: TextStyle(
                              color: Color.fromARGB(255, 14, 36, 54),
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      // TableCell(
                      //   child: ListTile(
                      //     onTap: () => onAllClicked(allChecked),
                      //     leading: Checkbox(
                      //       value: allChecked.value,
                      //       onChanged: (value) => onAllClicked(allChecked),
                      //     ),
                      //     title: Text(
                      //       allChecked.title,
                      //       style: TextStyle(
                      //         color: Color.fromARGB(255, 14, 36, 54),
                      //         fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                  ...List.generate(
                    20,
                    (index) => TableRow(children: [
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Checkbox(
                            value: ischeckbox1,
                            onChanged: (value) {
                              setState(() {
                                ischeckbox1 = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(''),
                        ),
                      ),
                      TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                          isCheckboxVisible
                            ? Checkbox(
                              value: ischeckbox2,
                              onChanged: (value) {
                                setState(() {
                                  ischeckbox2 = value ?? false;
                                });
                              },
                            )
                            : Text(
                              'ACC',
                              style: TextStyle(
                                color: Color.fromARGB(255, 14, 36, 54),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ]
                        ),
                      ),
                    ]),
                  )
                  // ...List.generate(
                  //   20,
                  //   (index) => TableRow(
                  //     children: [
                  //       TableCell(
                  //         verticalAlignment: TableCellVerticalAlignment.middle,
                  //         child: Padding(
                  //           padding: EdgeInsets.all(8.0),
                  //           child: Checkbox(
                  //             value: checkbox2,
                  //             //=> checkboxItem(checkbox2)
                  //             onChanged: (value) {
                  //               setState(() {
                  //                 checkbox2 = value!;
                  //               });
                  //             },
                  //           ),
                  //         ),
                  //       ),
                  //       const TableCell(
                  //         verticalAlignment: TableCellVerticalAlignment.middle,
                  //         child: Padding(
                  //           padding: EdgeInsets.all(8.0),
                  //           child: Text(''),
                  //         )
                  //       ),
                  //       const TableCell(
                  //         verticalAlignment: TableCellVerticalAlignment.middle,
                  //         child: Padding(
                  //           padding: EdgeInsets.all(8.0),
                  //           child: Text(''),
                  //         )
                  //       ),
                  //       const TableCell(
                  //         verticalAlignment: TableCellVerticalAlignment.middle,
                  //         child: Padding(
                  //           padding: EdgeInsets.all(8.0),
                  //           child: Text(''),
                  //         )
                  //       ),
                  //       const TableCell(
                  //         verticalAlignment: TableCellVerticalAlignment.middle,
                  //         child: Padding(
                  //           padding: EdgeInsets.all(8.0),
                  //           child: Text(''),
                  //         )
                  //       ),
                  //       // TableCell(
                  //       //   child: Padding(
                  //       //     padding: EdgeInsets.all(8.0),
                  //       //     child: Checkbox(
                  //       //       value: allChecked.value,
                  //       //       onChanged: (value) =>
                  //       //           onAllClicked(allChecked),
                  //       //     ),
                  //       //   ),
                  //       // ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    // onSurface: Color.fromARGB(255, 14, 36, 54),
                    foregroundColor: getColor(
                        Colors.white, const Color.fromARGB(255, 14, 36, 54)),
                    backgroundColor: getColor(
                        const Color.fromARGB(255, 14, 36, 54), Colors.white),
                  ),
                  child: const Text(
                    'IMPORT',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  onPressed: () async {
                    openFiles();
                    // ignore: unused_local_variable
                    // var file =
                    //     await FilePicker.platform.pickFiles(type: FileType.any);
                    // final result = await FilePicker.platform.pickFiles();
                    // if (result == null) return;
                    // // Open single file
                    // final file = result.files.first;
                    // openFile(file);
                    // // openFile(file);

                    // print('Name: ${file.name}');
                    // print('Bytes: ${file.bytes}');
                    // print('Size: ${file.size}');
                    // print('Extensions: ${file.extension}');
                    // print('Path: ${file.path}');

                    // final newFile = await savePermanently(file);

                    // print('From Path: ${file.path!}');
                    // print('To Path: ${newFile.path}');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    // onSurface: Color.fromARGB(255, 14, 36, 54),
                    foregroundColor: getColor(
                        Colors.white, const Color.fromARGB(255, 14, 36, 54)),
                    backgroundColor: getColor(
                        const Color.fromARGB(255, 14, 36, 54), Colors.white),
                  ),
                  //ignore: sort_child_properties_last
                  child: const Text(
                    'EXPORT',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed:
                      (selectedData.isNotEmpty) ? () => _addNewPair() : null,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    // onSurface: Color.fromARGB(255, 14, 36, 54),
                    foregroundColor: getColor(
                        Colors.white, const Color.fromARGB(255, 14, 36, 54)),
                    backgroundColor: getColor(
                        const Color.fromARGB(255, 14, 36, 54), Colors.white),
                  ),
                  //ignore: sort_child_properties_last
                  child: const Text(
                    'ACC ALL',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed:
                      // isDisable
                      //     ? () {
                      //         (selectedData.isNotEmpty)
                      //             ? () => _addNewPair()
                      //             : null;
                      //         //         setState(() {
                      //         //           setButton();
                      //         //           (selectedData.isNotEmpty)
                      //         //               ? () => _addNewPair()
                      //         //               : null;
                      //         //         });
                      //       }
                      //     : null,
                      () {
                    setState(() {
                      // Toggle the visibility of the checkbox/text
                      isCheckboxVisible = !isCheckboxVisible;
                    });
                  },
                  // ischeckbox2 ? () {} : null;
                  // checkSelected();
                  // if (selectedData.isNotEmpty) {
                  //   isButtonActive = false;
                  // } else { wildflower in the...
                  //   isButtonActive = true;
                  // }
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Future<File> savePermanently(PlatformFile file) async {
  //   final appStorage = await getApplicationDocumentsDirectory();
  //   final newFile = File('${appStorage.path}/${file.name}');

  //   return File(file.path!).copy(newFile.path);
  // }

  // void openFile(PlatformFile file) {
  //   OpenFile.open(file.path!);
  // }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    //ignore: prefer_function_declarations_over_variables
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };

    return MaterialStateProperty.resolveWith(getColor);
  }

  _addNewPair() {}

  clickButton() {}

  File(String? file) {}

  void setAddDataLoadingFalse() {}

  //onTap(onAllClicked) => onAllClicked(allChecked);

  // onAllChecked(CheckBoxModal ckbItem) {
  //   setState(() {
  //     ckbItem.value = !ckbItem.value;
  //   });
  // }

  // onAllClicked(CheckBoxModal ckbItem) {
  //   final newValue = !ckbItem.value;
  //   setState(() {
  //     ckbItem.value = newValue;
  //     //ignore: avoid_function_literals_in_foreach_calls
  //     checkBoxList.forEach((element) {
  //       element.value = newValue;
  //     });

  //     // all checked list
  //     // checkBoxList
  //     // checkBoxList.forEach((element) {
  //     //   element.value = newValue;
  //     // });

  //     // for (var element in checkBoxList) {
  //     //   element.value = newValue;
  //     // }

  //     // if (!newValue) {
  //     //   allChecked.value = false;
  //     // } else {
  //     //   final allListChecked = checkBoxList.every((element) => element.value);
  //     //   allChecked.value = allListChecked;
  //     // }
  //   });
  // }

  // onItemClicked(CheckBoxModal ckbItem) {
  //   final newValue = !ckbItem.value;
  //   setState(() {
  //     ckbItem.value = newValue;

  //     if (!newValue) {
  //       allChecked.value = false;
  //     } else {
  //       final allListChecked = checkBoxList.every((element) => element.value);
  //       allChecked.value = allListChecked;
  //     }
  //   });
  // }

  //static MaterialStatesController() {}
}

mixin Excel {
  get tables => null;
}

void setAddDataLoadingTrue() {}

class ExcelSheetData {
  var item;
  var harga;
  var qty;
  var naik;

  ExcelSheetData({this.item, this.harga, this.qty, this.naik});
}

class CheckBoxModal {
  late String title;
  late bool value;

  CheckBoxModal({required this.title, this.value = false});

  void forEach(Null Function(dynamic element) param0) {}
}

// CheckboxListTile(
//   title: const Text(
//     "ACC",
//     style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//   ),
//   value: _isChecked,
//   onChanged: (bool? newValue) {
//     setState(() {
//       _isChecked = newValue!;
//     });
//   },
//   activeColor: Colors.transparent,
//   checkColor: Colors.white,
//   tristate: true,
// ),

// import 'package:flutter/material.dart';

// class ConfirmScreen extends StatefulWidget {
//   const ConfirmScreen({Key? key}) : super(key: key);

//   @override
//   State<ConfirmScreen> createState() => _ConfirmScreenState();
// }

// class _ConfirmScreenState extends State<ConfirmScreen> {
//   @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: const Text("Kembali"),
//       backgroundColor: const Color.fromARGB(255, 49, 93, 129),
//     ),
//     backgroundColor: const Color.fromARGB(255, 51, 96, 133),
//     body: Container(
//       margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//       child: SingleChildScrollView(
//         //scrollDirection: Axis.horizontal,
//         padding: const EdgeInsets.only(top: 30),
//         child: DataTable(
//           columns: const [
//             DataColumn(
//                 label: Icon(Icons.check_box_outline_blank_rounded,
//                     color: Colors.white)),
//             DataColumn(
//                 label: Text('Item',
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold))),
//             DataColumn(
//                 label: Text('Harga',
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold))),
//             DataColumn(
//                 label: Text('QTY',
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold))),
//             DataColumn(
//                 label: Text('Naik',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white))),
//             DataColumn(
//                 label: Text('ACC',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.white))),
//           ],
//           rows: const [
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell((Icon(Icons.check_box_rounded, color: Colors.white))),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//             DataRow(cells: [
//               Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
//               DataCell(Icon(Icons.check_box_outline_blank_rounded,
//                   color: Colors.white)),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Text('')),
//               DataCell(Icon(Icons.check_box_rounded, color: Colors.white)),
//             ]),
//           ],
//         ),
//       ),
//     ),
//   );
// }
// }
