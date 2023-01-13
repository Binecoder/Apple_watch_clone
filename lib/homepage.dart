// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cstar/util/buywatch.dart';
import 'package:cstar/util/database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.white10,
          elevation: 0,
          title: CircleAvatar(
            backgroundImage: AssetImage('images/avatar.webp'),
            radius: 25,
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(elevation: 0, items: [
          BottomNavigationBarItem(
              icon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.grey)),
                child: Icon(
                  Icons.home_outlined,
                  color: Colors.black,
                  size: 34,
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.grey,
                size: 34,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_add_outlined,
                color: Colors.grey,
                size: 34,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outlined,
                color: Colors.grey,
                size: 34,
              ),
              label: "")
        ]),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'Popular Watches',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 330,
                    child: TrackWidget(refresh),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      height: 400,
                      width: 370,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage('images/watch2.png'))),
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }

  refresh() {}
}

class TrackWidget extends StatelessWidget {
  final Function() notifyParent;
  TrackWidget(this.notifyParent);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mostPopular.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BuyWatch()));
            }),
            child: Container(
              margin: EdgeInsets.all(10),
              width: 260,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(mostPopular[index].image),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          mostPopular[index].name,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, top: 15),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                          ),
                          child: Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, bottom: 10),
                    child: Text(
                      mostPopular[index].prix,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.orange),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
