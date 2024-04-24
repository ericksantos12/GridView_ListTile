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
        endereco: 'Av. dos Seilaoq, MG',
        telefone: '(79) 2337-3627'),
    Cliente(
        nome: 'Gabrielle Teixeira',
        endereco: 'Avenida Esbertalina Barbosa Damiani, RN',
        telefone: '(84) 2504-6669'),
    Cliente(
        nome: 'Felipe Valeriano',
        endereco: 'Rua Pereira EstÃ©fano, SP',
        telefone: '(12) 2351-2811'),
    Cliente(
        nome: 'Erick',
        endereco: 'Rua Cristiano Olsen, SP',
        telefone: '(11) 3756-3376'),
    Cliente(
        nome: 'Larissa Santos',
        endereco: 'Avenida Rio Branco, RJ',
        telefone: '(21) 2478-9143'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clientees',
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