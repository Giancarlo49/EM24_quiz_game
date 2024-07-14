// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:em24/components/button.dart';
import 'package:em24/models/cart_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HunSuiPage extends StatelessWidget {
  const HunSuiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text(
            "E M  2 0 2 4",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true, // Title in der AppBar zentriert
          backgroundColor: Colors.transparent,
          elevation: 5, // AppBar - Farbe/Transparenz
          iconTheme: IconThemeData(
            color: Colors
                .white, // Setzt die Farbe aller Icons in der AppBar auf Weiß
          ),

          actions: [
            Padding(
              // shopping_cart Icon mit Padding gewrapped
              padding: const EdgeInsets.only(
                  right: 18), // Abstand/Padding nach rechts
              child: IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () => Navigator.pushNamed(context, '/cartpage'),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Center(
              child: Image.asset(
                "lib/images/em24Logo1.png",
                height: 220,
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Spiel Gruppe A",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              "in Köln",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "15. Juni",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "15:00 Uhr",
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/images/HUN.png",
                  height: 30,
                ),
                SizedBox(width: 10),
                Text(
                  "HUNGARY",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 10),
            Text(
              "-",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("lib/images/SUI.png", height: 30),
                SizedBox(width: 10),
                Text(
                  "SWITZERLAND",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(25),
              height: 200,
              color: Colors.green,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "€ 499",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: cartModel.removeHunSui,
                                icon: Icon(Icons.remove)),
                          ),
                          SizedBox(width: 10),
                          Text(
                            cartModel.hunsui.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: IconButton(
                                onPressed: cartModel.addHunSui,
                                icon: Icon(Icons.add)),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  MyButton(
                    mytext: "Warenkorb",
                    event: () => Navigator.pushNamed(context, '/cartpage'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
