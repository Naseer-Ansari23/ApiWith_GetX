import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Get_Utilities extends StatefulWidget {
  const Get_Utilities({Key? key}) : super(key: key);

  @override
  State<Get_Utilities> createState() => _Get_UtilitiesState();
}

class _Get_UtilitiesState extends State<Get_Utilities> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData.dark().copyWith(primaryColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(title: Text('GetX Utilities',),),
        body: Center(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,children: [
              Text('Get X Utilities',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Get Dialog Box'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                minimumSize: Size(200, 40),primary: Colors.blue),
                onPressed: (){
                  Get.defaultDialog(
                    title: 'Warning',
                    middleText: 'Are you sure do want to Exit?',
                    actions: [
                      ElevatedButton(
                        child: Text('Yes'),
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            primary: Colors.blue),
                        onPressed: (){
                          Get.back();
                        },
                      ),
                      ElevatedButton(
                        child: Text('No'),
                        style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            primary: Colors.orangeAccent),
                        onPressed: (){
                          Navigator.pop(context);
                        },
                      ),
                    ]
                  );
                },
            ),
              SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Get Snack bar'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(200, 40),primary: Colors.blue),
                onPressed: (){
                  Get.snackbar(
                    'Dear Customer',
                    'Dear user Naseer Ahmad Thanks for visiting ?',
                    icon: Icon(Icons.account_circle,size: 30,),
                    borderRadius: 20,
                    backgroundColor: Colors.orange[100],
                    margin: EdgeInsets.all(10),
                  );
                },
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Get Routes'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(200, 40),primary: Colors.blue),
                onPressed: (){
                  // Get.to(()=> SecondPage());
                  // Get.back(()=> SecondPage());
                  // Get.off(SecondPage());
                  // Get.offAll(SecondPage());
                },
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Get BottomSheet'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(200, 40),primary: Colors.blue),
                onPressed: (){
                  Get.bottomSheet(
                    Container(
                      height: 350,
                      decoration: BoxDecoration(color: Colors.greenAccent,borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15),)),
                      child: Center(child: Text('Hello iam Bottom Sheet'),),
                    ),
                  );
                },
              ),
              SizedBox(height: 15,),
              ElevatedButton(
                child: Text('Get Change Theme'),
                style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(200, 40),primary: Colors.blue),
                onPressed: (){
                  Get.changeTheme(ThemeData.dark());
                },
              ),

          ],),
        ),
      ),
    );
  }
}
