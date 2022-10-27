import 'package:flutter/material.dart';
import 'package:yarab/Login.dart';
import 'package:yarab/Register.dart';
class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);
  // Widget build(BuildContext context) { //context is an object of a type BuildContext
  //       return MaterialApp(home: Scaffold(
  //         appBar: AppBar(title: Text('My first app'),),
  //         body: Text('ahla project da wala eh'),
  //       )); //base set up to turn the combination widgets into a real app
  // }
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
                  // CustomPaint(
                  //   painter: OpenPainter(),
                  // ),
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


                      style: TextStyle(color: Color(0xffffff),
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



                  // Padding(
                  //     padding: EdgeInsets.fromLTRB(0, 60, 10, 130),
                  //     child: ElevatedButton(
                  //       child: Text('Login'),
                  //       style: ElevatedButton.styleFrom(
                  //         primary: Color(0xFFCAADCC),
                  //         minimumSize: Size(180, 43),
                  //         textStyle: const TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 30,
                  //             fontStyle: FontStyle.italic,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //       onPressed: () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(builder: (context) =>  myLogin()),
                  //         );
                  //       },
                  //     )
                  // ),
                  /////////////////////////
                  // Padding(
                  //     padding: EdgeInsets.fromLTRB(0, 60, 10, 190),
                  //     child: ElevatedButton(
                  //       child: Text('Register'),
                  //       style: ElevatedButton.styleFrom(
                  //         primary: Color(0xFFCAADCC),
                  //         minimumSize: Size(180, 43),
                  //         textStyle: const TextStyle(
                  //             color: Colors.white,
                  //             fontSize: 30,
                  //             fontStyle: FontStyle.italic,
                  //             fontWeight: FontWeight.bold),
                  //       ),
                  //       onPressed: () {
                  //         Navigator.push(
                  //           context,
                  //           MaterialPageRoute(builder: (context) => const Register()),
                  //         );
                  //       },
                  //     )
                  // ),
                ],
              ),

            ], //<Widget>[]
          ), //Column
        ), //Center
      ),
    );
  }
}
