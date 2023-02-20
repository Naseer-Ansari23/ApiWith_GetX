import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_practice/Controllers/FavouriteController.dart';

class Favourite_Exp_Three extends StatefulWidget {
  const Favourite_Exp_Three({Key? key}) : super(key: key);

  @override
  State<Favourite_Exp_Three> createState() => _Favourite_Exp_ThreeState();
}

class _Favourite_Exp_ThreeState extends State<Favourite_Exp_Three> {

  FavouriteController controller = Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Example three'),),
        body:  ListView.builder(
          itemCount: controller.ourList.length,
          itemBuilder: (context , index){
            return Card(
              margin: EdgeInsets.all(10),

              child: Obx(() => ListTile(
                title: Text(controller.ourList[index].toString()),
                trailing: Icon(Icons.favorite,
                    color: controller.favouriteList.contains(controller.ourList[index].toString()) ? Colors.red : Colors.black12),

                onTap: (){

                  if(controller.favouriteList.contains(controller.ourList[index].toString())) {
                    controller.favouriteList.remove(controller.ourList[index].toString());
                  }
                  else{
                    controller.favouriteList.add(controller.ourList[index].toString());
                  }

                },
              ),)
            );
          },
        ),
      ),
    );
  }
}
