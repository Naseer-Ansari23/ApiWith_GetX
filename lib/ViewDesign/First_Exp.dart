

import 'package:flutter/material.dart';

Widget FirstPostDesign(String title,body){

  return Card(
    margin: EdgeInsets.all(10),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
        SizedBox(height: 5,),
        Text('Title',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Text(title),
        SizedBox(height: 5,),
        Text('Descriptions',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
        SizedBox(height: 5,),
        Text(body),

      ],),
    ),
  );
}