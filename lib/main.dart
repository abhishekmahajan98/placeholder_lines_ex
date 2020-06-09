import 'package:flutter/material.dart';
import 'package:flutter_placeholder_textlines/flutter_placeholder_textlines.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget section(String header, int numlines) {
    return Column(
      children: [
        ListTile(
          title: Text(
            header,
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.height / 30,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: PlaceholderLines(
            count: numlines,
            animate: true,
            align: TextAlign.left,
            lineHeight: 12,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            section('Header 1', 3),
            section('Header 2', 2),
            section('Header 3', 7),
            section('Header 4', 4),
            section('Header 5', 5),
            section('Header 6', 5),
          ],
        ),
      ),
    );
  }
}
