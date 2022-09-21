//import 'dart:html';
//import "package:universal_html/html.dart" as html;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:speedforcetasks/Providers/Comment.dart';
import 'package:speedforcetasks/Providers/likeColor.dart';
import 'package:speedforcetasks/Screens/NewFullScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => likeColor()),
        ChangeNotifierProvider(create: (_) => Comment())
      ],
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const NewFullScreen(),
      ),
    );
  }
}
