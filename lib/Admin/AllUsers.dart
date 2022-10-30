import 'package:flutter/material.dart';
import 'package:yarab/User/FitnessApp.dart';
import 'package:yarab/Admin/AdminPage.dart';
import 'package:yarab/Admin/ViewUsers.dart';
import 'package:yarab/Profile.dart';
import 'package:yarab/Welcomepage.dart';

class AllUsers extends StatefulWidget {
  const AllUsers({Key? key}) : super(key: key);

  @override
  State<AllUsers> createState() => _AllUsers();
}
class _AllUsers extends State<AllUsers> {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF9340BA),
        title: Text('Booked Users'),
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
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const AdminPage()));
              },
            ),
            ListTile(
              leading:Icon(Icons.person),
              title:const Text('Profile',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
            ListTile(
              leading:Icon(Icons.logout_outlined),
              title:const Text('Logout',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Welcomepage()),
              );
              },
            )
          ],
        ),
      ),
      body: Column(children: const [
        ViewUsers(
          ClassName: "Boxing Class",
          Duration: "09:00 am-10:00 am" ,
          BookedSpots: "10 Booked Spots ",
        ),
        ViewUsers(
          ClassName: "Flexibility",
          Duration: "09:00 am-10:00 am" ,
          BookedSpots: "20 Booked Spots ",
        ),
        ViewUsers(
          ClassName: "Zumba",
          Duration: "09:00 am-10:00 am" ,
          BookedSpots: "5 Booked Spots ",
        ),

      ],
      ),

    );
  }
}

