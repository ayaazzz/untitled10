import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Examble Of Grid View Screen'),
        centerTitle: true,
      ),
      body: GridViewWidget(),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  final List<String> items = List.generate(6, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GridItem(
          item: items[index],
        );
      },
    );
  }
}

class GridItem extends StatelessWidget {
  final String item;

  const GridItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Center(
        child: Text(item),
      ),
    );
  }
}