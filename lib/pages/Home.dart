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
              Stack(
                children: [
                  Container(
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    padding: EdgeInsets.all(3.5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 2, 249, 138),
                        shape: BoxShape.circle),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "\$ 154 ",
                  style: TextStyle(fontSize: 16),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
