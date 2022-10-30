import 'package:flutter/material.dart';
class Book_Tile extends StatelessWidget {
  final String Instructor;
  final String classname;
  final String Duration;
  final String Spots;
  const Book_Tile({Key? key,required this.classname,required this.Duration,required this.Spots, required this.Instructor}) : super(key: key);
  @override
  Widget build(BuildContext context2) {
    return Padding( padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(34),
        decoration: BoxDecoration(
            color: Color(0xFFC0C0C0),
            borderRadius: BorderRadius.circular(10)
        ),

        child: Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [
        Row(
        children:[
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(Instructor, textAlign: TextAlign.left , style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800,fontSize: 17),),
            Text(Duration, textAlign: TextAlign.left , style:  TextStyle(color: Colors.white,fontWeight: FontWeight.w800,),),
            Text(classname, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),),
            Text(Spots, style: TextStyle(color: Colors.white,fontWeight: FontWeight.w800,),),],),],),
      Column(
        children:[
          ElevatedButton(
      onPressed: () => showDialog<String>(
        context: context2,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Alert'),
          content: const Text('Are you sure you want to book this session'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'No'),
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'Yes'),
              child: const Text('Yes'),
            ),
          ],
        ),
      ),
      child: const Text('Book'),
        style: ElevatedButton.styleFrom(
    primary: Color(0xFF9340BA),
    minimumSize: Size(30, 30),
    textStyle: const TextStyle(
    color: Colors.white,
    fontSize: 14,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold),),)],),],)
      ),);
  }
}
