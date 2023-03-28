import 'package:flower_app/Provider/cart.dart';
import 'package:flower_app/pages/customappbar.dart';
import 'package:flower_app/pages/items.dart';
import 'package:flower_app/pages/details.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Item {
  String imgPath;
  double price;

  Item({required this.imgPath, required this.price});
}

class Homepage extends StatelessWidget {
  Homepage({super.key});
  final List<Item> items = [
    Item(price: 12.99, imgPath: "assets/images/1.webp"),
    Item(price: 12.99, imgPath: "assets/images/2.webp"),
    Item(price: 12.99, imgPath: "assets/images/3.webp"),
    Item(price: 12.99, imgPath: "assets/images/4.webp"),
    Item(price: 12.99, imgPath: "assets/images/5.webp"),
    Item(price: 12.99, imgPath: "assets/images/6.webp"),
    Item(price: 12.99, imgPath: "assets/images/7.webp"),
    Item(price: 12.99, imgPath: "assets/images/8.webp"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 33,
            ),
            itemCount: items.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 22),
                child: GestureDetector(
                  onTap: () {},
                  child: GridTile(
                    footer: GridTileBar(
                      trailing: Consumer<Cart>(
                          builder: ((context, classInstancee, child) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 70),
                          child: IconButton(
                            color: Colors.black,
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          ),
                        );
                      })),
                      leading: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('\$15'),
                      ),
                    ),
                    child: Stack(children: [
                      Positioned(
                        right: 0,
                        left: 0,
                        top: -3,
                        bottom: -9,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                          child: Image.asset(items[index].imgPath),
                        ),
                      ),
                    ]),
                  ),
                ),
              );
            }),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/R.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 45,
                  backgroundImage:
                      AssetImage("assets/images/photo_2023-03-24_21-38-03.jpg"),
                ),
                accountEmail: Text('@bodamohmed'),
                accountName: Text('abdomohamed'),
              ),
              ListTile(
                title: Text("Home"),
                leading: Icon(Icons.home),
                onTap: () {},
              ),
              ListTile(
                title: Text("My products"),
                leading: Icon(Icons.add_shopping_cart),
                onTap: () {},
              ),
              ListTile(
                title: Text("About"),
                leading: Icon(Icons.help_center),
                onTap: () {},
              ),
              ListTile(
                title: Text("Logout"),
                leading: Icon(Icons.exit_to_app),
                onTap: () {},
              ),
              Spacer(
                flex: 1,
              ),
              Text(
                "Developed by Abdulrhman Mohamed @2023",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        appBar: AppBar(
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
        ));
  }
}
