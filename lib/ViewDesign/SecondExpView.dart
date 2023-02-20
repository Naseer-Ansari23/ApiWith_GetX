
import 'package:expansion_tile_card/expansion_tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget UserPotsViewDesign(String name,email,city,street,zipcode,phone) {

  final GlobalKey<ExpansionTileCardState> cardA= new GlobalKey();
  final GlobalKey<ExpansionTileCardState> cardB= new GlobalKey();

  return Padding(
    padding: EdgeInsets.all(10),
    child: ExpansionTileCard(
      key: cardA,
      baseColor: Colors.blue[100],
      leading: Icon(Icons.account_circle),
      title: Text(name),
      subtitle: Text(email),
      children: [
        Divider(
          thickness: 1,
          height: 1,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Text('Address Details!',style: TextStyle(fontSize: 14 ,fontWeight: FontWeight.w600),),
            SizedBox(height: 10,),
            Row(children: [
              Text('City :'),
              Spacer(),
              Text(city),
            ],),
            SizedBox(height: 10,),
            Row(children: [
              Text('Street :'),
              Spacer(),
              Text(street),
            ],),
            SizedBox(height: 10,),
            Row(children: [
              Text('ZipCode :'),
              Spacer(),
              Text(zipcode),
            ],),
            SizedBox(height: 10,),
            Row(children: [
              Text('Phone'),
              Spacer(),
              Text(phone),
            ],),
            SizedBox(height: 10,),
          ],),
        ),
      ],
    ),
  );

}