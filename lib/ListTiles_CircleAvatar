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
      title: 'listTilecomCircleAvatar',
      theme: ThemeData(primarySwatch: Colors.green),
      home: MyHomePage(),
    );
  }
}
 
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});
 
  final List dummyList = List.generate(
      20,
      (index) => {
            "id": index,
            "title": "Este é o titulo $index",
            "subtitle": "Este é o subtitulo $index",
          });
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: ((context, index) => Card(
                elevation: 6,
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.purple,
                    child: Text(dummyList[index]["id"].toString()),
                  ),
                  title: Text(dummyList[index]["title"]),
                  subtitle: Text(dummyList[index]["subtitle"]),
                  trailing: const Icon(Icons.add_a_photo),
                ),
              )),
        ),
      ),
    );
  }
}