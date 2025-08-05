import 'dart:convert';
import 'package:dandi_flutter/models/post_model.dart';
import 'package:dandi_flutter/models/quran_model.dart';
import 'package:http/http.dart' as http;


class PostService{
  static const String postUrl = 'https://api.npoint.io/99c279bb173a6e28359c/data';

  static Future<List<QuranModel>> listQuran() async {
    final response = await http.get(Uri.parse(postUrl));

    if(response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((item) => QuranModel.fromJson(item)).toList();
    } else {
      throw Exception('Gagal Load Data!!');
    }
  }
}