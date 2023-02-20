import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_practice/Models/PostModels.dart';
import 'package:todo_practice/ViewDesign/First_Exp.dart';

import '../Get_Api_Controller/PostController.dart';

class First_Exp_API extends StatefulWidget {
  const First_Exp_API({Key? key}) : super(key: key);

  @override
  State<First_Exp_API> createState() => _First_Exp_APIState();
}

class _First_Exp_APIState extends State<First_Exp_API> {

  postController controller = Get.put(postController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Example'),),
        body: FutureBuilder(
          future: controller.getPostApi(),
          builder: (context , AsyncSnapshot<List<PostModel>> snapshot){
            if(!snapshot.hasData){
              return Center(child: Text(controller.isLoading.value));
            }
            else{
              return Obx(() {
                return ListView.builder(
                    itemCount: controller.postList.length,
                    itemBuilder: (context , index){
                      return GestureDetector(
                        child: FirstPostDesign(
                          controller.postList[index].title.toString(),
                          controller.postList[index].body.toString(),
                        ),

                        onTap: (){},
                      );
                    }
                );
              });
            }
          },
        ),
      ),
    );
  }
}
