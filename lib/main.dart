import 'package:flutter/material.dart';
import 'package:flutter_news/routes.dart';

import 'pages/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      routes: staticRoutes,
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
