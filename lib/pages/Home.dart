import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Color.fromARGB(255, 8, 119, 12),
        actions: [
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart))
            ],
          )
        ],
      ),
    );
  }
}
