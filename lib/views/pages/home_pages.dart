import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 45, left: 20, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: screenSize.width / 1.5,
                  height: screenSize.height / 22,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                      Text("Tìm kiếm"),
                      Icon(Icons.camera_alt_outlined),
                    ],
                  ),
                ),
                Container(
                  width: screenSize.width / 5,
                  height: screenSize.height / 22,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.shopping_cart_outlined),
                      Icon(Icons.chat_bubble_outline_rounded),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 50,),
            Card(
              elevation: 5.0,
              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                          padding: EdgeInsets.all(10), child: Icon(Icons.qr_code)),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Icon(Icons.shop)
                        ],
                      ),
                    ),
                    Text("ok")
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
