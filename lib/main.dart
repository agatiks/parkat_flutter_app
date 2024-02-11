import 'package:flutter/material.dart';
import 'package:parkat_flutter_app/style.dart';
import 'package:parkat_flutter_app/ui/map_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      /*theme: ThemeData(
        textTheme: StyleValues.textTheme,
        colorScheme: StyleValues.colorScheme,
        useMaterial3: true,
      ),*/
      home: const Scaffold(
        body: MapPage(),
      )
    );
  }
}