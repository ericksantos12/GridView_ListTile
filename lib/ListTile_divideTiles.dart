import 'package:flutter/material.dart';
 
void main() {
  runApp(const MyWidget());
}
 
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ListTileComDivideTiles',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: ListTile.divideTiles(context: context, tiles: [
          const ListTile(
            leading: Icon(Icons.car_rental),
            title: Text('Carro'),
          ),
          const ListTile(
            leading: Icon(Icons.flight),
            title: Text('Flight'),
          ),
          const ListTile(
            leading: Icon(Icons.train),
            title: Text('Train'),
          ),
        ]).toList(),
      ),
    );
  }
}