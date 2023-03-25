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
          Text(
            "\$ 15.12 ",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: EdgeInsets.all(3),
                  child: Text(
                    "New",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(223, 255, 251, 0),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(223, 255, 251, 0),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(223, 255, 251, 0),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(223, 255, 251, 0),
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(223, 255, 251, 0),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
