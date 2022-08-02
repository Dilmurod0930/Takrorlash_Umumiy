import 'package:flutter/material.dart';

class ListViewSeparatorpage extends StatelessWidget {
  const ListViewSeparatorpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(centerTitle: true, title: const Text("ListView Separator")),
      body: ListView.separated(
        separatorBuilder: ((context, index) {
          return index % 4 == 0
              ? Card(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.34,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    //!c  Stak ham ishlatildi 
                    child: Stack(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.network(
                              'https://source.unsplash.com/random/$index',
                              fit: BoxFit.cover),
                        ),
                        const Positioned(
                          bottom: 1,
                          right: 1,
                          child: Opacity(
                            opacity: 0.9,
                            child: Chip(
                                backgroundColor: Colors.teal,
                                label: Text(" Bizda hozir  skidka ")),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : const Divider();
        }),
        itemCount: 12,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text("Name $index"),
              trailing: const Icon(Icons.abc),
            ),
          );
        },
      ),
    );
  }
}
