import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [

Expanded(
  child:   GridView.custom(
    gridDelegate: SliverQuiltedGridDelegate(
      crossAxisCount: 4,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      repeatPattern: QuiltedGridRepeatPattern.inverted,
      pattern: [
        QuiltedGridTile(2, 2),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 1),
        QuiltedGridTile(1, 2),
      ],
    ),
    semanticChildCount: 10,
    childrenDelegate: SliverChildBuilderDelegate(
      (context, index) => Container(
        alignment: Alignment.center,
        child: Text("Test string"),color: Colors.red,),
    ),
  ),
),

          // StaggeredGrid.count(crossAxisCount: 10,children: [
          //   Container(
          //     width: 50,
          //     height: 50,
          //     color: Colors.red,
          //   ),  Container(
          //     width: 100,
          //     height: 200,
          //     color: Colors.blue,
          //   ),Container(
          //     width: 30,
          //     height: 200,
          //     color: Colors.blue,
          //   ),
          //   Text("data"),
          //   Text("data"),
          //   Text("data"),
          //   Text("data"),
          //   Text("data"),
          //   Text("data"),
          // ],),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
