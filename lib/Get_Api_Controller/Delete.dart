

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class DeleteApiController extends GetxController{

  var nameController= TextEditingController().obs;
  var jobController= TextEditingController().obs;

  void PostApi(String name,job) async {

    final response = await post(
        Uri.parse('https://reqres.in/api/users/2'),
        body: {
          'name' : name,
          'job' : job,
        }
    );

    var data= jsonDecode(response.body.toString());
    // print(data['name']);

    if(response.statusCode == 201){
      print('Post Success');
      Get.snackbar(
        'Post Success',
        'Dear user your post successful Deleted',
      );
    }
    else{
      print('post Failed');
      Get.snackbar(
        'Post Failed',
        'Dear user your post is Failed',
      );
    }
  }

}