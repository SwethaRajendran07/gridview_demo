import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Hide the debug banner
      debugShowCheckedModeBanner: false,
      title: 'GridView',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final List<Map> myProducts =
  List.generate(100000, (index) => {"id": index, "name": "Product $index"})
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 120,
            childAspectRatio: 1 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children: [
          Card(
            color: Colors.amber.shade200,
          ),
          Card(
            color: Colors.blue.shade300,
          ),
          Card(color: Colors.pink.shade400),
          Card(
            color: Colors.red.shade200,
          ),
          Card(
            color: Colors.purple.shade300,
          ),
          Card(color: Colors.green.shade400),
          Card(
            color: Colors.teal.shade200,
          ),
          Card(
            color: Colors.green.shade300,
          ),
          Card(color: Colors.indigo.shade400),
        ],
      ),
    );
  }
}
