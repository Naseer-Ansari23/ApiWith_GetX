

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../Models/UserModels.dart';

class UserController extends GetxController{

  var isLoading= 'Loading...'.obs;
  var userList=<UserModels>[].obs;

  Future<List<UserModels>> getUserPostApi() async {
    final response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var data= jsonDecode(response.body.toString());

    if(response.statusCode == 200){
      for(Map i in data ){
        userList.add(UserModels.fromJson(i));
      }
      return userList;
    }
    else{
      return userList;
    }

  }

}