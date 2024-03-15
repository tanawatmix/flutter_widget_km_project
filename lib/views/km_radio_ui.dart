// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmRadioUI extends StatefulWidget {
  const KmRadioUI({super.key});

  @override
  State<KmRadioUI> createState() => __KmRadioUIState();
}

class __KmRadioUIState extends State<KmRadioUI> {
  int pl = 2;
  String Food = "Pizza";
  String major = "D";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          'แชร์ KM Radio',
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
          //  INT
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 1,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text(
                  'Python',
                ),
                Radio(
                  value: 2,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text(
                  'JAVA',
                ),
                Radio(
                  value: 3,
                  groupValue: pl,
                  onChanged: (paramValue) {
                    setState(() {
                      pl = paramValue!;
                    });
                  },
                ),
                Text(
                  'C#',
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            // Food
            Row(
              children: [
                Radio(
                  value: 'Pizza',
                  groupValue: Food,
                  onChanged: (paramValue) {
                    setState(() {
                      Food = paramValue!;
                    });
                  },
                ),
                Text(
                  'Pizza',
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'KFC',
                  groupValue: Food,
                  onChanged: (paramValue) {
                    setState(() {
                      Food = paramValue!;
                    });
                  },
                ),
                Text(
                  'KFC',
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Amazon',
                  groupValue: Food,
                  onChanged: (paramValue) {
                    setState(() {
                      Food = paramValue!;
                    });
                  },
                ),
                Text(
                  'Amazon',
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 'Fuji',
                  groupValue: Food,
                  onChanged: (paramValue) {
                    setState(() {
                      Food = paramValue!;
                    });
                  },
                  activeColor: Colors.red,
                  fillColor:
                      MaterialStateColor.resolveWith((states) => Colors.orange),
                ),
                Text(
                  'Fuji',
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            RadioListTile(
              value: 'DTI', 
              groupValue: major, 
              onChanged: (paramValue) {},
              title: Text( 
                'สาขา DTI'
              ),
              subtitle: Text( 
                'Technology Digital and Innovation',
              ),
              secondary: Icon( 
                FontAwesomeIcons.facebook,
              ),
            ),
            RadioListTile(
              value: 'DTI', 
              groupValue: major, 
              onChanged: (paramValue) {},
              title: Text( 
                'สาขา DM'
              ),
              subtitle: Text( 
                'Digital Media',
              ),
              secondary: Icon( 
                FontAwesomeIcons.twitch,
              ),
            ),
            RadioListTile(
              value: 'DTI', 
              groupValue: major, 
              onChanged: (paramValue) {},
              title: Text( 
                'สาขา ABC'
              ),
              subtitle: Text( 
                'Ant Bird Cat',
              ),
              secondary: Icon( 
                FontAwesomeIcons.instagram,
              ),
            ),
            RadioListTile(
              value: 'DTI', 
              groupValue: major, 
              onChanged: (paramValue) {},
              title: Text( 
                'สาขา GTA'
              ),
              subtitle: Text( 
                'Grand Theft Auto',
              ),
              secondary: Icon( 
                FontAwesomeIcons.steam,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
