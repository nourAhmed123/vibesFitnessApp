import 'package:flutter/material.dart';
import 'package:yarab/ContactUs.dart';
import 'package:yarab/Profile.dart';
import 'package:yarab/User/ViewSessions.dart';
import 'package:yarab/User/FitnessApp.dart';
import 'package:yarab/Welcomepage.dart';

class MySessions extends StatefulWidget {
  const MySessions({Key? key}) : super(key: key);

  @override
  State<MySessions> createState() => _MySessions();
}
class _MySessions extends State<MySessions> {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF9340BA),
        title: Text('My  History'),
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
              leading:Icon(Icons.home),
              title:const Text('Home',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const FitnessApp()));
              },
            ),
            ListTile(
              leading:Icon(Icons.person),
              title:const Text('Profile',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(context,MaterialPageRoute(builder: (context) => const Profile()));
              },
            ),
            ListTile(
              leading:Icon(Icons.info_outline),
              title:const Text('About us',style: TextStyle(fontSize: 17)),
              onTap: (){
                showAboutDialog(context: context,applicationIcon: Image.asset("images/Logo.PNG",width: 70,height:70),
                    applicationName: "Vibes Fitness app",
                    children:<Widget>[
                      Text('Vibes Gym offering a dynamic range of fitness classes and health services.Classes include but are not limited to: flexibility, Boxing,  Yoga, spa services '),
                      Text('Moreover, You can Schedule all your classes online by one click '),

                    ]


                );

              },
            ),
            ListTile(
              leading:Icon(Icons.phone),
              title:const Text('Contact Us',style: TextStyle(fontSize: 17)),
              onTap: () { Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  ContactUs()));
              },
            ),
            ListTile(
              leading:Icon(Icons.accessibility_new),
              title:const Text('My Sessions',style: TextStyle(fontSize: 17)),
              onTap: (){ Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MySessions()),
              );
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
        ViewSessions(
          ClassName: "Boxing Class",
          Date: "9/5/2022" ,
        ),
        ViewSessions(
          ClassName: "Flexibility",
          Date: "19/7/2022" ,
        ),
        ViewSessions(
          ClassName: "Flexibility",
          Date: "21/10/2022" ,
        ),

      ],
      ),

    );
  }
}

