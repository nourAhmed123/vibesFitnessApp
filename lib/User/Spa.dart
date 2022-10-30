import 'package:flutter/material.dart';
import 'BookSpa.dart';
import 'package:yarab/User/FitnessApp.dart';
import 'package:yarab/Profile.dart';
import 'package:yarab/ContactUs.dart';
import 'package:yarab/User/MySessions.dart';
import 'package:yarab/Welcomepage.dart';

class spa extends StatefulWidget {
  const spa({Key? key}) : super(key: key);

  @override
  State<spa> createState() => _spa();
}
class _spa extends State<spa> {
  @override
  Widget build(BuildContext context){
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Color(0xFF9340BA),
        title: Text('Health Club'),
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
              onTap: () { Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>  MySessions()));
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
      //
      body: SingleChildScrollView(
      child: Stack(
        children: <Widget>[
      Column(

        children: const [
          Book_Spa(

            Name: "Bridal Package",
            Duration: "120 min",
            Price: "price:2500 LE" ,
            Description : "body scrub ,Swedish massage \n and Sea facial.",
            image:"images/shutterstock_1447852889-1-1-800x534.jpg" ,
          ),
           Book_Spa(
            Name: "Massage Package 1",
            Description :"Neck & shoulders",
            Duration: "30 min",
             Price: "price:400 LE" ,
          image: "images/spa-768x512.jpg",
           ),
           Book_Spa(
             Name: "Friends Package",
            Duration: "90 min",
             Price: "price:1000 LE" ,
           Description : "Sauna,Jacuzzi,back massage and \n Scrub.",
          image: "images/1.jpg"),
            Book_Spa(
              Name: "Relax Package",
            Duration: "60 min",
            Price: "price:500 LE" ,
             Description : "Jacuzzi,Scrub and Body Lotion",
                image: "images/Massage-Aromatherapy.jpeg"
           ),
        ],
      ),],),),);


  }
}