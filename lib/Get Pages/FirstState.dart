import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_practice/Controllers/CounterController.dart';

class First_State_M_Example extends StatefulWidget {
  const First_State_M_Example({Key? key}) : super(key: key);

  @override
  State<First_State_M_Example> createState() => _First_State_M_ExampleState();
}

class _First_State_M_ExampleState extends State<First_State_M_Example> {

  // First Example OF GetX Stat Management
  // Dependence injections in with get x

  CounterController controller= Get.put(CounterController());

  int counter =0;


  @override
  Widget build(BuildContext context) {

    print('Rebuild Widget');
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Example'),),
        body: Center(child: Row(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [

            Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,children: [
              Text('Set State',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Text(counter.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Counter 1'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(110, 40),primary: Colors.blue),
                onPressed: (){
                  counter ++;
                  setState(() {

                  });
                },
              ),

            ],),

            Column(crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,children: [
              Text('GetX State',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),

              Obx(() {
                return  Text(controller.counter.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),);
              }),

              SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Counter 2'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(110, 40),primary: Colors.blue),
                onPressed: (){
                  controller.increment();
                },
              ),

            ],),

        ],),)
      ),
    );
  }
}
