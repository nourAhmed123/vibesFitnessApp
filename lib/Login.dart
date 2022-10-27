import 'package:flutter/material.dart';
import 'package:yarab/Register.dart';



class myLogin extends StatefulWidget {
  const myLogin({super.key});

  @override
  State<myLogin> createState() => Login();
}
class Login extends State<myLogin> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        flexibleSpace: const Image(
          image: AssetImage('images/login.jpeg'),
          fit: BoxFit.cover,
          width:250.00, ),
        toolbarHeight: 150,
      ),

      body: Stack(
        children: [

          Container(
             padding: EdgeInsets.only(left: 35, top: 40),
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.black, fontSize: 36,fontWeight: FontWeight.bold,),),),

          Container(
            margin: EdgeInsets.only(left: 35, right: 35, top: 150),
    child: Form(
            key: _formKey,
            child: Column(

                children: [


                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        hintText: "Email",
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purple, width: 3.0),
                          borderRadius: BorderRadius.circular(2),),),
                          validator: (value) {
                           if (value == null || value.isEmpty) {
                        return 'Please enter your Email';
                      }
                      return null;
                    },

                  ),
                  const SizedBox(height: 20,),
                  TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: "Password",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple, width: 3.0),
                        borderRadius: BorderRadius.circular(2),),),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },

                  ),
                  const SizedBox(height: 20,),
                TextButton(
                  child: Text('Forgot Password?'),
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    foregroundColor: Colors.black,
                  ),

                  onPressed: () {},),

                  ElevatedButton(
                   child: Text('LOGIN'),
                    style: ElevatedButton.styleFrom(
                    primary: Color(0xFF9340BA),
                    minimumSize: Size(200, 50),
                    textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form!.validate()) {
                      form.save();
                      print('saving user data');
                    }
                  },),

                     TextButton(
                       child: Text('Don’t have an account? Register!'),
                       style: TextButton.styleFrom(
                         padding: EdgeInsets.fromLTRB(10, 115, 20, 20),
                         textStyle: const TextStyle(
                           decoration: TextDecoration.underline,
                           fontSize: 15,
                           fontWeight: FontWeight.bold,
                         ),
                         foregroundColor: Colors.deepOrange,
                       ),

                       onPressed: () {
                          Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const Register()),
                         );},)
                  // const Padding(
                  //   padding: EdgeInsets.fromLTRB(10, 70, 20, 20), //apply padding to all four sides
                  //   child: Text("Don’t have an account?"),),

                ],

            ),

          ),
          ),
        ],
      ),

    );

  }

  _capitalize(String s) => s[0].toUpperCase() + s.substring(1);
}
