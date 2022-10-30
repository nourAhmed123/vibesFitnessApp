import 'package:flutter/material.dart';
import 'package:yarab/Home.dart';
import 'package:yarab/Login.dart';
import 'BookTile.dart';
import 'package:yarab/Home.dart';

class bookpt extends StatefulWidget {
  const bookpt({Key? key}) : super(key: key);

  @override
  State<bookpt> createState() => _PTbooking();
}
class _PTbooking extends State<bookpt> {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Color(0xFF9340BA),
        title: Text('Private Trainer Booking'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children:  <Widget>[
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF9340BA),
              ),
              accountName: Text("VIBES GYM",style: TextStyle( fontSize: 21, fontFamily: 'Poppins')),
              accountEmail: Text(''), ),
            ListTile(
              leading:Icon(Icons.home_outlined),
              title:const Text('Home',style: TextStyle( fontSize: 17)),
              onTap: (){  Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
              },
            ),
            ListTile(
              leading:Icon(Icons.person),
              title:const Text('Profile',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.pop(context);
              },
            ),
            ListTile(
              leading:Icon(Icons.logout_outlined),
              title:const Text('Logout',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const myLogin()),
              );
              },
            )
          ],
        ),
      ),
      body: Column(children: const [
        Book_Tile(
          Instructor: "Jumana",
          classname: "Full Body",
          Duration: "09:00 am-10:00 pm " ,
          Spots: "(Everyday)",
        ),
        Book_Tile(
          Instructor: "Nada",
          classname: "Cardio-Abs",
          Duration: "11:00 am-10:00 pm " ,
          Spots: "(Sunday-Thursday)",
        ),
        Book_Tile(
          Instructor: "Shourk",
          classname: "Upper Body",
          Duration: "9:00 am-10:00 pm" ,
          Spots: "(EveryDay)",
        ),
        Book_Tile(
          Instructor: "Nouran",
          classname: "Lower Body",
          Duration: "09:00 am-10:00 am" ,
          Spots: "(Sunday-Friday)",
        ),
      ],
      ),

    );
  }
}

