

import 'dart:convert';

import 'package:get/get.dart';
import 'package:todo_practice/Models/PostModels.dart';
import 'package:http/http.dart' as http;

class postController extends GetxController{

  var isLoading = 'Loading..'.obs;
  var postList= <PostModel>[].obs;


  Future<List<PostModel>> getPostApi() async {
    
    final response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data= jsonDecode(response.body.toString());

    if(response.statusCode == 200){
      for(Map i in data){
        postList.add(PostModel.fromJson(i));
      }
      return postList;
    }
    else{
      return postList;
    }

  }

}