import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_practice/Get_Api_Controller/Delete.dart';

class DeleteExp_Api extends StatefulWidget {
  const DeleteExp_Api({Key? key}) : super(key: key);

  @override
  State<DeleteExp_Api> createState() => _DeleteExp_ApiState();
}

class _DeleteExp_ApiState extends State<DeleteExp_Api> {

  DeleteApiController controller = Get.put(DeleteApiController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Delete Post API Exp'),),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Obx(() => Column(crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,children: [

              Text('Post Api Example',style: TextStyle(fontSize: 18),),
              SizedBox(height: 15,),
              TextField(
                controller: controller.nameController.value,
                decoration: InputDecoration(
                    hintText: 'Enter Name'
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: controller.jobController.value,
                decoration: InputDecoration(
                    hintText: 'Enter job'
                ),
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Delete Post'),
                style: ElevatedButton.styleFrom(minimumSize: Size(200, 46)),
                onPressed: (){
                  controller.PostApi(controller.nameController.toString(), controller.jobController.toString());
                },
              ),
            ],),),
        ),
      ),
    );
  }
}
