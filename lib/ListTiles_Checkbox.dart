import 'package:flutter/material.dart';

void main() => runApp(const ListTileApp());

class ListTileApp extends StatelessWidget {
  const ListTileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const ListTileExample(),
    );
  }
}

class ListTileExample extends StatefulWidget {
  const ListTileExample({super.key});

  @override
  State<ListTileExample> createState() => _ListTileExampleState();
}

class _ListTileExampleState extends State<ListTileExample> {
  ListTileTitleAlignment? titleAlignment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exemplo de title com checkbox')),
      body: Column(
        children: <Widget>[
          const Divider(),
          ListTile(
            titleAlignment: titleAlignment,
            leading: Checkbox(
              value: true,
              onChanged: (bool? value) {},
            ),
            title: const Text('Título do texto'),
            subtitle: const Text(
                'Clicar no widget Menu(lado direito) mostrará um menu '
                'que permite alterar o alinhamento do título.'
                'O alinhamento do título é definido como threeLine por padrão '
                'se o `ThemeData.useMaterial3` for verdadeiro. Caso contrário,'
                'o padrão é titleHeight.'),
            trailing: PopupMenuButton<ListTileTitleAlignment>(
              onSelected: (ListTileTitleAlignment? value) {
                setState(() {
                  titleAlignment = value;
                });
              },
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<ListTileTitleAlignment>>[
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.threeLine,
                  child: Text('threeLine'),
                ),
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.titleHeight,
                  child: Text('titleHeight'),
                ),
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.top,
                  child: Text('top'),
                ),
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.center,
                  child: Text('center'),
                ),
                const PopupMenuItem<ListTileTitleAlignment>(
                  value: ListTileTitleAlignment.bottom,
                  child: Text('bottom'),
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
