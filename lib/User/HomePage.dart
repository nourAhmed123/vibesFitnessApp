import 'package:flutter/material.dart';
import 'package:yarab/Login.dart';
import 'package:yarab/Register.dart';
class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF351339),
        body: Center(
          child: Column(
            children: <Widget>[
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[

                  ClipRRect(
                    // borderRadius: BorderRadius.circular(120),
                    child: Image(
                      image: new AssetImage('images/Capture2.PNG'),
                      height: 826,
                      width: 400,
                      fit: BoxFit.cover,


                    ),


                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 650.0, right: 0),
                    child: const Text(
                      'WELCOME',


                      style: TextStyle(color: Color(0xF2CAADCC),
                          shadows: [
                            Shadow(color: Colors.black38, offset: Offset(3,3), blurRadius:2)
                          ],
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.italic,
                          fontSize: 50.0),

                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(bottom: 630.0, right: 0),
                    child: const Text(
                      'Please Select Category',


                      style: TextStyle(color: Color(0xFFF3E5F5),
                          shadows: [
                            Shadow(color: Colors.black38, offset: Offset(3,3), blurRadius:0)
                          ],
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                          fontSize: 17.0),

                    ),
                  ),


                  IconButton(
                    padding: EdgeInsets.only(bottom: 400.0, right: 0),
                    icon: Image.asset('images/spa.jpg'),
                    iconSize: 200,
                    tooltip: 'SPA',

                    onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => const Register()),
                               );
                    },),

                  IconButton(

                    padding: EdgeInsets.only(bottom: 250.0, right: 0),
                    icon: Image.asset('images/classes.jpg'),
                    iconSize: 200,
                    tooltip: 'CLASSES',

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Register()),
                      );
                    },),

                  IconButton(
                    padding: EdgeInsets.only(bottom: 100.0, right: 0),
                    icon: Image.asset('images/pt.jpg'),
                    iconSize: 200,
                    tooltip: 'PRIVATE TRAINER',

                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Register()),
                      );
                    },),


                ],
              ),

            ], //<Widget>[]
          ), //Column
        ), //Center
      ),
    );
  }
}
