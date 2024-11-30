import 'package:flutter/material.dart';
import 'package:vph_common_widgets/vph_common_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const columnCount = 6;
    return MaterialApp(
      home: Scaffold(
        body: UniformGrid(
          columnCount: columnCount,
          squareCell: true,
          // borderSide: const BorderSide(),
          withHeader: false,
          // ignore: avoid_print
          onSizeChanged: (size, cellSize) => print("size: $size, cellSize: $cellSize"),
          children: List.generate(
            columnCount * 2,
            (int index) => Container(
              alignment: Alignment.center,
              color: Colors.red,
              child: Text((index + 1).toString()),
            ),
          ),
        ),
      ),
    );
  }
}
