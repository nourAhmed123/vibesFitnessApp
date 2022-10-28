import 'package:flutter/material.dart';
import 'package:yarab/Login.dart';
import 'package:yarab/Register.dart';
import 'package:yarab/Welcomepage.dart';
import 'dart:ui';



void main(){
  //Runapp: ay haga aktebha betersemo 3al screen(runnng mel akher)
  runApp(const MaterialApp(
    title: 'Navigation Basics',
    home: myLogin(),
  ));
}
/* buildcontext is a special object type provided by flutter
build el gambaha is also a method that return a widget w heya el betetnada fel akher
 */

