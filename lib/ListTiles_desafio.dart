import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Cliente {
  String nome;
  String endereco;
  String telefone;
  Cliente({required this.nome, required this.endereco, required this.telefone});
}

class MyApp extends StatelessWidget {
  final List<Cliente> clientes = [
    Cliente(
        nome: 'Gabrielle Carvalho',
        endereco: 'Av. das Moças Bonitas',
        telefone: '(79) 2337-3627'),
    Cliente(
        nome: 'Thiago dos Santos Lucas',
        endereco: 'Rua da Pamonha, RN',
        telefone: '(84) 2504-6669'),
    Cliente(
        nome: 'Felipe Valeriano',
        endereco: 'Rua União Popular, SP',
        telefone: '(12) 2351-2811'),
    Cliente(
        nome: 'Erick Santos SOUZA',
        endereco: 'Rua Adolfo, SP',
        telefone: '(11) 3756-3376'),
  ];

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clientes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Clientes'),
        ),
        body: ListView.builder(
          itemCount: clientes.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: NetworkImage("https://api.dicebear.com/8.x/lorelei/png?seed=${clientes[index].nome}"),),
                title: Text(clientes[index].nome),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(clientes[index].endereco),
                    Text(clientes[index].telefone),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}