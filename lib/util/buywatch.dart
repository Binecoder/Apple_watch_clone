// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BuyWatch extends StatelessWidget {
  const BuyWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 30,
            color: Colors.black,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              'Apple Watch',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(height: 40),
          Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('images/watch4.jpeg'))),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Price',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    '\$454 ',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Color',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Silver',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Strap',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Text(
                    'Rubber',
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Information',
                style: TextStyle(fontSize: 20),
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 255, 106, 0),
                ),
                child: Icon(
                  Icons.favorite,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Discover the most robust and versatile Apple Watch. With an ultra-resistant titanium case, a high-precision dual-frequency GPS, up to 36 hours of autonomy1, all the advantages of cellular connectivity2.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey)),
              child: MaterialButton(
                onPressed: () {},
                child: Center(child: Text('ADD  TO CART')),
              ),
            ),
          )
        ],
      ),
    );
  }
}
