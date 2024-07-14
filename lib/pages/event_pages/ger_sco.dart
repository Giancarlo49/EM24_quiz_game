// Diese Zeile ignoriert bestimmte Linter-Warnungen für die gesamte Datei
// Diese Warnungen werden für dieses Projekt als unwichtig angesehen

// ignore_for_file: prefer_const_constructors

import 'package:em24/components/button.dart'; // Importiert das Button-Widget
import 'package:em24/models/cart_model.dart'; // Importiert das CartModel
import 'package:flutter/material.dart'; // Importiert das Material-Design-Paket von Flutter
import 'package:provider/provider.dart'; // Importiert das Provider-Paket

// Die Seite für das Deutschland vs. Schottland-Spiel
class GerScoPage extends StatelessWidget {
  const GerScoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      // Consumer, um auf das CartModel zuzugreifen und Änderungen zu überwachen
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Colors.lightGreen, // Hintergrundfarbe des Scaffold
        appBar: AppBar(
          // AppBar der Seite
          title: Text(
            "E M  2 0 2 4", // Titel der AppBar
            style: TextStyle(
              fontWeight: FontWeight.bold, // Fettdruck für den Titel
              color: Colors.white, // Textfarbe des Titels
            ),
          ),
          centerTitle: true, // Zentriert den Titel der AppBar
          backgroundColor:
              Colors.transparent, // Transparenter Hintergrund der AppBar
          elevation: 5, // Schatten der AppBar
          iconTheme: IconThemeData(
            color: Colors
                .white, // Setzt die Farbe aller Icons in der AppBar auf Weiß
          ),

          actions: [
            // Aktionen in der AppBar

            Padding(
              padding: const EdgeInsets.only(right: 18), // Abstand nach rechts
              child: IconButton(
                // Warenkorb-Icon
                icon: Icon(Icons.shopping_cart, color: Colors.white),
                onPressed: () => Navigator.pushNamed(context, '/cartpage'),
              ),
            )
          ],
        ),
        body: Column(
          // Hauptinhalt der Seite in einer Spalte
          children: [
            // Widgets für die Anzeige des Spiels und der Warenkorbinteraktionen
            Center(
              child: Image.asset(
                "lib/images/em24Logo1.png", // EM-Logo
                height: 220, // Höhe des Logos
              ),
            ),
            SizedBox(height: 25), // Leerer Platz
            Text(
              "Eröffnungs - Spiel", // Text für das Eröffnungsspiel
              style: TextStyle(
                fontSize: 20, // Schriftgröße
              ),
            ),
            Text(
              "in München", // Ort des Spiels
              style: TextStyle(fontSize: 18), // Schriftgröße
            ),
            Text(
              "14. Juni", // Datum des Spiels
              style: TextStyle(fontSize: 18), // Schriftgröße
            ),
            Text(
              "21:00 Uhr", // Uhrzeit des Spiels
              style: TextStyle(fontSize: 18), // Schriftgröße
            ),
            SizedBox(height: 25), // Leerer Platz
            Row(
              // Widget für die Anzeige der Teams
              mainAxisAlignment:
                  MainAxisAlignment.center, // Zentriert die Elemente horizontal
              children: [
                Image.asset(
                  "lib/images/GER.png", // Deutschland-Flagge
                  height: 30, // Höhe des Bildes
                ),
                SizedBox(width: 10), // Leerer Platz
                Text(
                  "GERMANY", // Teamname Deutschland
                  style: TextStyle(
                      fontSize: 30, // Schriftgröße
                      fontWeight: FontWeight.bold, // Fettdruck
                      color: Colors.white), // Textfarbe
                )
              ],
            ),
            SizedBox(height: 10), // Leerer Platz
            Text(
              "-", // Trennstrich
              style: TextStyle(
                  fontSize: 30, // Schriftgröße
                  fontWeight: FontWeight.bold, // Fettdruck
                  color: Colors.white), // Textfarbe
            ),
            SizedBox(height: 10), // Leerer Platz
            Row(
              // Widget für die Anzeige der Teams
              mainAxisAlignment:
                  MainAxisAlignment.center, // Zentriert die Elemente horizontal
              children: [
                Image.asset("lib/images/SCO.png",
                    height: 30), // Schottland-Flagge
                SizedBox(width: 10), // Leerer Platz
                Text(
                  "SCOTLAND", // Teamname Schottland
                  style: TextStyle(
                      fontSize: 30, // Schriftgröße
                      fontWeight: FontWeight.bold, // Fettdruck
                      color: Colors.white), // Textfarbe
                ),
              ],
            ),
            SizedBox(height: 25), // Leerer Platz
            Container(
              // Container für Warenkorb-Interaktionen
              padding: EdgeInsets.all(25), // Innenabstand des Containers
              height: 200, // Höhe des Containers
              color: Colors.green, // Hintergrundfarbe des Containers
              child: Column(
                // Widget für die Anzeige des Warenkorbs
                children: [
                  Row(
                    // Widget für die Anzeige des Preises und der Warenkorb-Steuerung
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly, // Platz gleichmäßig verteilt
                    children: [
                      Text(
                        "€ 499", // Preis
                        style: TextStyle(
                            fontSize: 30, // Schriftgröße
                            fontWeight: FontWeight.bold, // Fettdruck
                            color: Colors.white), // Textfarbe
                      ),
                      Row(
                        // Widget für die Warenkorb-Steuerung
                        children: [
                          Container(
                            // Container für die Schaltfläche zum Entfernen aus dem Warenkorb
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, // Kreisform
                              color: Colors.white, // Hintergrundfarbe
                            ),
                            child: IconButton(
                                onPressed: cartModel
                                    .removeGerSco, // Entfernen-Funktion
                                icon: Icon(Icons.remove)), // Entfernungs-Icon
                          ),
                          SizedBox(width: 10), // Leerer Platz
                          Text(
                            cartModel.gersco.toString(), // Anzahl der Artikel
                            style: TextStyle(
                                color: Colors.white, // Textfarbe
                                fontSize: 20, // Schriftgröße
                                fontWeight: FontWeight.bold), // Fettdruck
                          ),
                          SizedBox(width: 10), // Leerer Platz
                          Container(
                            // Container für die Schaltfläche zum Hinzufügen in den Warenkorb
                            decoration: BoxDecoration(
                              shape: BoxShape.circle, // Kreisform
                              color: Colors.white, // Hintergrundfarbe
                            ),
                            child: IconButton(
                                onPressed:
                                    cartModel.addGerSco, // Hinzufügen-Funktion
                                icon: Icon(Icons.add)), // Hinzufüge-Icon
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 30), // Leerer Platz
                  MyButton(
                    // Button für den Warenkorb
                    mytext: "Warenkorb", // Text auf dem Button
                    event: () => Navigator.pushNamed(
                        context, '/cartpage'), // Navigationsfunktion
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
