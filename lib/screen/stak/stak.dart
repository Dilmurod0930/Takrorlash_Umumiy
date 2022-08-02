import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Stack")),
      body: Column(
        children: [
          Expanded(
            //! umumiy stak berib contenerga  ustiga  maxsulot narxini berdik stak mavzusuga 
            child: Container(
              child: Stack(
                children: [
                  Container(
                    color: Colors.grey,
                  ),
                  const Positioned(
                    bottom: 0.5,
                    right: 0.15,
                    child: Opacity(
                      opacity: 0.4,
                      child: Chip(
                        backgroundColor: Colors.red,
                        label: Text(
                          "235.00 \$",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
