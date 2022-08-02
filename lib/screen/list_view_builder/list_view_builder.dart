import 'package:flutter/material.dart';

class ListViewBuilderPage extends StatelessWidget {
  const ListViewBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("ListViewbuilder")),
      body: ListView.builder(
        itemCount: 12,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const CircleAvatar(backgroundColor: Colors.teal),
              title: Text("Name $index"),
              trailing: const Icon(Icons.abc),
            ),
          );
        },
      ),
    );
  }
}
