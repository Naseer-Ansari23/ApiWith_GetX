import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_practice/Get_Api_Controller/UserController.dart';
import 'package:todo_practice/ViewDesign/SecondExpView.dart';

class SecondExp_GetPost extends StatefulWidget {
  const SecondExp_GetPost({Key? key}) : super(key: key);

  @override
  State<SecondExp_GetPost> createState() => _SecondExp_GetPostState();
}

class _SecondExp_GetPostState extends State<SecondExp_GetPost> {

  // dependency injections

  UserController controller = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild Widget');

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Second Exp'),),
        body: FutureBuilder(
          future: controller.getUserPostApi(),
          builder: (context , snapshot){

            if(snapshot.hasData){
              return Obx(() {
                return ListView.builder(
                  itemCount: controller.userList.length,
                    itemBuilder: (context , index ){
                      return UserPotsViewDesign(
                          controller.userList[index].name.toString(),
                          controller.userList[index].email.toString(),
                          controller.userList[index].address.city.toString(),
                          controller.userList[index].address.street.toString(),
                          controller.userList[index].address.zipcode.toString(),
                          controller.userList[index].phone.toString(),
                      );
                    }
                );
              });
            }
            else{
              return Obx(() => Center(child: Text(controller.isLoading.value)));
            }
          },
        ),
      ),
    );
  }
}
