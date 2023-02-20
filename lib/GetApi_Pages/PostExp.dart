import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_practice/Get_Api_Controller/Post.dart';

class PostExp_Api extends StatefulWidget {
  const PostExp_Api({Key? key}) : super(key: key);

  @override
  State<PostExp_Api> createState() => _PostExp_ApiState();
}

class _PostExp_ApiState extends State<PostExp_Api> {

  PostApiController controller = Get.put(PostApiController());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Post API Exp'),),
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
                child: Text('Post'),
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
