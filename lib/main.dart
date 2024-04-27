import 'package:flutter/material.dart';
import 'package:flutter_bloemnews2/models/newsdata.dart';
import 'package:flutter_bloemnews2/pages/storiespage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => NewsData(),
        builder: (context, child) {
          return StoriesPage();
        },
      ),
    );
  }
}
