import 'package:flutter/material.dart';
import 'package:yarab/Welcomepage.dart';
import 'package:yarab/Profile.dart';
import 'package:yarab/User/Classbooking.dart';
import 'package:yarab/User/Spa.dart';
import 'package:yarab/User/Widget.dart';
import 'package:yarab/ContactUs.dart';
import 'package:yarab/User/PT.dart';
import 'package:yarab/User/MySessions.dart';

class FitnessApp extends StatefulWidget {
  const FitnessApp({super.key});
  @override
  State<FitnessApp> createState() => _FitnessAppState();
}
class _FitnessAppState extends State<FitnessApp> {
  List<String> trainingImage=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6ma1geMZ85CwNbdI6UiGVk6jql8sS0ENhxsmHh7N11Q9qZMu5ZHg5TKU0uedS0t3K1Eo&usqp=CAU",
    "https://naturatermospa.com/wp-content/uploads/2019/09/spa-768x512.jpg",
    "https://www.verywellfit.com/thmb/G637OPu9wLLZAjMXfpgvZ43W4Wk=/1541x1156/smart/filters:no_upscale()/1229776-Stocksy_804672-37d2e8ab1f294ec5a704731731eb914b.jpg",
  ];

  Widget build(BuildContext context) {
    //context is an object of a type BuildContext
    return Scaffold(
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
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled){
          return <Widget>[

            SliverAppBar(

              expandedHeight: 300.0,
              pinned: true,
              floating: true,
              title: Text("Vibes Gym",
              style: TextStyle(color: Colors.white),),
           centerTitle: true,
            backgroundColor: Colors.black,
            toolbarHeight: 80.0,
            // leading: IconButton(
            //   onPressed: (){
            //
            //   },
            //   // icon: Icon(Icons.menu),
            // ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network('https://media.istockphoto.com/photos/side-view-of-beautiful-muscular-woman-running-on-treadmill-picture-id1132086660?k=20&m=1132086660&s=612x612&w=0&h=UTXXsDbUuREHV0UwHThgI144yKyReetDYlIL5C6_JoI=',fit: BoxFit.cover,
              //to make it darker
          color: Color(0xaa212121),
              colorBlendMode: BlendMode.darken,),
            ),
            //add the bottom serach bar
              bottom: PreferredSize(child:Padding(

          padding: const EdgeInsets.only(
          bottom: 34.0, left: 12.0, right: 12.0
          ),


                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                    ),
                      contentPadding: EdgeInsets.symmetric(vertical: 0.0
                      ,horizontal: 24.0),
                    hintText: "Search for a training Program...",
                    prefixIcon: Icon(Icons.search,
                    color:Colors.purple,)

                  ),
                ),),
                preferredSize: Size.fromHeight(80.0),),

            ),

          ];
        },
        //build the app body

        body: SingleChildScrollView(

          child: Padding(

            padding:
            const EdgeInsets.only(top: 20.0, right: 20.0,left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text("Top Trends",
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: 24.0,
                  fontWeight: FontWeight.w800,
                ),),
                SizedBox(
                  height: 20.0,
                ),
                //create the list Item widget
                listItem(trainingImage[0], "classes", 4, 30),
                listItem(trainingImage[1], "Spa", 4, 30),
                listItem(trainingImage[2], "Private Trainer", 4, 59),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    ElevatedButton(
                      child: Text('Spa'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        minimumSize: Size(30, 43),
                        textStyle: const TextStyle(
                          color: Colors.purpleAccent,
                          fontSize: 25,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const spa()),
                        );
                      },
                    ),
                    ElevatedButton(
                      child: Text('Classes'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        minimumSize: Size(30, 43),
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Booking()),
                        );
                      },
                    ),
                    ElevatedButton(
                      child: Text('PT'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        minimumSize: Size(30, 43),
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const bookpt()),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
          ),
    ); //base set up to turn the combination widgets into a real app
  }
}

