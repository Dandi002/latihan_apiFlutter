import 'package:dandi_flutter/pages/posts/list_post_screen.dart';
import 'package:dandi_flutter/pages/quran/quran_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Surat Al Quran'),
          backgroundColor: Colors.green),
      
        body: QuranListScreen(),
        
        ),
    );
  }
}