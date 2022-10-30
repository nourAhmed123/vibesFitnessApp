import 'package:flutter/material.dart';
import 'package:yarab/Login.dart';

import 'package:yarab/Widget.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});
  @override
  State<AdminPage> createState() => _AdminPage();
}
class _AdminPage extends State<AdminPage> {
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
              accountName: Text("Admin",style: TextStyle( fontSize: 21, fontFamily: 'Poppins')),
              accountEmail: Text(''), ),

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
                background: Image.network('https://play-lh.googleusercontent.com/JN2eBGwf43lXD29owa2iyK3YgflO9RtjmBsmNJCmKeUkWsu7MXy-CVu3qVrTO2-pJueg=-rw',fit: BoxFit.cover,
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
                      hintText: "Search.....",
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
                Text("Admin",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w800,
                  ),),
                SizedBox(
                  height: 20.0,
                ),


                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [

                    ElevatedButton(
                      child: Text('Add Class'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        minimumSize: Size(30, 43),
                        textStyle: const TextStyle(
                          color: Colors.purple,
                        ),
                      ),
                      onPressed: () {

                      },
                    ),
                    ElevatedButton(
                      child: Text('View and '
                          'Cancelled Classes'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        minimumSize: Size(30, 43),
                        textStyle: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {

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

