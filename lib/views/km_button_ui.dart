// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KmButtonUI extends StatefulWidget {
  const KmButtonUI({super.key});

  @override
  State<KmButtonUI> createState() => __KmButtonUIState();
}

class __KmButtonUIState extends State<KmButtonUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            ElevatedButton.icon( 
              onPressed: (){},
              icon: Icon( 
                FontAwesomeIcons.facebook,
              ),
              label: Text( 
                'DTI Click',
              ),
              style: ElevatedButton.styleFrom( 
                backgroundColor: Colors.blue,
                fixedSize: Size( 
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.7,
                ),
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),

            SizedBox( 
              height: 20.0,
            ),
            ElevatedButton.icon( 
              onPressed: (){},
              icon: Icon( 
                FontAwesomeIcons.facebook,
              ),
              label: Text( 
                'FaceBook',
              ),
              style: ElevatedButton.styleFrom( 
                backgroundColor: Colors.blue,
                fixedSize: Size( 
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.7,
                ),
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),

            SizedBox( 
              height: 20.0,
            ),

            OutlinedButton(
              onPressed: () {}, 
              child: Text( 
                'DTI Click',
                style: TextStyle( 
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.height * 0.03,
                ),
              ),
              style: OutlinedButton.styleFrom( 
                fixedSize: Size( 
                  MediaQuery.of(context).size.width * 0.7,
                  MediaQuery.of(context).size.height * 0.08,
                ),
                shape: RoundedRectangleBorder( 
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide( 
                    color: Colors.purple,
                    width: 5.0,
                  ),
                ),
              ),
              ),
          
          
          //InkWel() ใช้ ontab(){ }
          //GestureDetector() ใช้ ontab(){ }
          ],
        ),
      ),
    );
  }
}