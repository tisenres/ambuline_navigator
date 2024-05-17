import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Yandex Map Example',
      home: MyHomePage(title: 'Yandex Map Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late YandexMapController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title), // Use widget.title to access the title
      ),
      body: YandexMap(
        onMapCreated: (YandexMapController yandexMapController) {
          controller = yandexMapController;
        },
      ),
    );
  }
}