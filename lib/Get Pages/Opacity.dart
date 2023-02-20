import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_practice/Controllers/OpacityController.dart';

class Opacity_Widget_EXP_Two extends StatefulWidget {
  const Opacity_Widget_EXP_Two({Key? key}) : super(key: key);

  @override
  State<Opacity_Widget_EXP_Two> createState() => _Opacity_Widget_EXP_TwoState();
}

class _Opacity_Widget_EXP_TwoState extends State<Opacity_Widget_EXP_Two> {

  OpacityController controller= Get.put(OpacityController());

  @override
  Widget build(BuildContext context) {
    print('Rebuild');
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Example Two'),),
        body: Column(children: [
          Obx(() => Container(
            width: 200,
            height: 200,
            color: Colors.red.withOpacity(controller.opacity.value),
          ),),

          Obx(() => Slider(value: controller.opacity.value, onChanged: (value){
            controller.setOpacity(value);
          }),),

        ],),
      ),
    );
  }
}
