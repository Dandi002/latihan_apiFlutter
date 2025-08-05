import 'dart:convert';
import 'package:dandi_flutter/models/post_model.dart';
import 'package:http/http.dart' as http;


class PostService{
  static const String postUrl = 'https://jsonplaceholder.typicode.com/posts';

  static Future<List<PostModel>> listPost() async {
    final response = await http.get(Uri.parse(postUrl));

    if(response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => PostModel.fromJson(item)).toList();
    } else {
      throw Exception('Gagal Load Data Post');
    }
  }
}