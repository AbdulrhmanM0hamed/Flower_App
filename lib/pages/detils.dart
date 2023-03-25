import 'package:flutter/material.dart';

class Deteils extends StatelessWidget {
  const Deteils({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details screen"),
        backgroundColor: Color.fromARGB(255, 8, 119, 12),
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Positioned(
                    bottom: 24,
                    child: Container(
                      child: Text(
                        '5',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      padding: EdgeInsets.all(3.5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 247, 243, 9),
                          shape: BoxShape.circle),
                    ),
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
      body: Column(
        children: [
          Image.asset("assets/images/2.webp"),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                color: Colors.blueAccent,
                child: Text("New"),
              )
            ],
          )
        ],
      ),
    );
  }
}
