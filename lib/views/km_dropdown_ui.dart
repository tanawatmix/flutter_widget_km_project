// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class KmDropdownUI extends StatefulWidget {
  const KmDropdownUI({super.key});

  @override
  State<KmDropdownUI> createState() => _KmDropdownUIState();
}

class _KmDropdownUIState extends State<KmDropdownUI> {
  // list คล้าย array
  List<String> _plList = [
    'JAVA',
    'Python',
    'C#',
    'Go',
    'Dart',
  ];

  String _programming = 'JAVA';

// ----------------------------------------------
  List<String> _uList = ['SAU', 'TU', 'CMU', 'CHULA', 'MU'];

  String _university = 'CMU';

// ----------------------------------------------
  List<String> _fList = ['Pizza', 'KFC', 'Amazon', 'Fuji'];

  String _food = 'Pizza';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 182, 73, 255),
        title: Text(
          'แชร์ KM Dropdown',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DropdownButton(
            //   onChanged: (paramValue){},
            //   items: _plList.map((e) => DropdownMenuItem(
            //     value: e,
            //     child: Text( e,),
            //   )).toList(),
            // ),
            DropdownButton(
              value: _programming,
              onChanged: (paramValue) {
                setState(() {
                  _programming = paramValue!;
                });
              },
              items: _plList
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(e),
                      ))
                  .toList(),
            ),

            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.purple,
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _university,
                    onChanged: (paramValue) {
                      setState(() {
                        _university = paramValue!;
                      });
                    },
                    items: _uList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.holiday_village,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    e,
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 80.0,
              ),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 39, 176, 85),
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    value: _food,
                    onChanged: (paramValue) {
                      setState(() {
                        _food = paramValue!;
                      });
                    },
                    items: _fList
                        .map((e) => DropdownMenuItem(
                              value: e,
                              child: Row(
                                children: [
                                  
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    e + '  <=>  ',
                                  ),
                                  Icon(
                                    Icons.food_bank_outlined,
                                    color: Color.fromARGB(255, 39, 176, 46),
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
