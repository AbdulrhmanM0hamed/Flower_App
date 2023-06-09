import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Home"),
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
    );
  }
}
