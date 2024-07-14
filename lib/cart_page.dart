// Diese Zeile ignoriert bestimmte Linter-Warnungen für die gesamte Datei
// Diese Warnungen werden für dieses Projekt als unwichtig angesehen

// ignore_for_file: prefer_const_constructors

import 'package:em24/models/cart_model.dart'; // Importiert das CartModel
import 'package:flutter/material.dart'; // Importiert das Material-Design-Paket von Flutter
//import 'package:flutter/widgets.dart'; // Importiert Widgets für Flutter
import 'package:provider/provider.dart'; // Importiert Provider für das State Management

// Die CartPage ist ein StatelessWidget, da sich der Inhalt nicht ändert
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Verwendet Consumer, um auf das CartModel zuzugreifen
    return Consumer<CartModel>(
      builder: (context, cartModel, child) => Scaffold(
        backgroundColor: Colors.lightGreen, // Hintergrundfarbe der Seite
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Transparente AppBar
          elevation: 5, // Schatten der AppBar
          iconTheme: IconThemeData(
            color: Colors.white, // Farbe aller Icons in der AppBar
          ),
          title: Text(
            "Warenkorb", // Titel der AppBar
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold), // Textstil des Titels
          ),
          centerTitle: true, // Zentriert den Titel
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  // Liste der Artikel im Warenkorb
                  if (cartModel.gersco > 0)
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        // Container für einen Artikel im Warenkorb
                        decoration: BoxDecoration(
                          color: Colors.blue, // Hintergrundfarbe des Containers
                          borderRadius: BorderRadius.circular(
                              12), // Abgerundete Ecken des Containers
                        ),
                        child: ListTile(
                          // ListTile für den Artikel
                          title: Text(
                            "Germany vs Scotland", // Titel des Artikels
                            style: TextStyle(
                              color: Colors.white, // Textfarbe
                            ),
                          ),
                          subtitle: Text(
                            "€ 499", // Preis des Artikels
                            style: TextStyle(
                              color: Colors.white, // Textfarbe
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cartModel.gersco
                                    .toString(), // Anzahl des Artikels im Warenkorb
                                style:
                                    TextStyle(color: Colors.white), // Textfarbe
                              ),
                              SizedBox(width: 10), // Leerer Platz
                              IconButton(
                                onPressed: cartModel
                                    .clearGerSco, // Löscht den Artikel aus dem Warenkorb
                                icon: Icon(Icons.delete,
                                    color: Colors.red), // Icon zum Löschen
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  // Weitere Artikel im Warenkorb folgen dem gleichen Muster wie oben
                  if (cartModel.hunsui > 0)
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        // Container für einen Artikel im Warenkorb
                        decoration: BoxDecoration(
                          color: Colors.blue, // Hintergrundfarbe des Containers
                          borderRadius: BorderRadius.circular(
                              12), // Abgerundete Ecken des Containers
                        ),
                        child: ListTile(
                          // ListTile für den Artikel
                          title: Text(
                            "Hungary vs Switzerland", // Titel des Artikels
                            style: TextStyle(
                              color: Colors.white, // Textfarbe
                            ),
                          ),
                          subtitle: Text(
                            "€ 499", // Preis des Artikels
                            style: TextStyle(
                              color: Colors.white, // Textfarbe
                            ),
                          ),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                cartModel.hunsui
                                    .toString(), // Anzahl des Artikels im Warenkorb
                                style:
                                    TextStyle(color: Colors.white), // Textfarbe
                              ),
                              SizedBox(width: 10), // Leerer Platz
                              IconButton(
                                onPressed: cartModel
                                    .clearHunSui, // Löscht den Artikel aus dem Warenkorb
                                icon: Icon(Icons.delete,
                                    color: Colors.red), // Icon zum Löschen
                              )
                            ],
                          ),
                        ),
                      ),
                    ),

                  // Gesamtanzahl der Artikel im Warenkorb
                  SizedBox(height: 30), // Leerer Platz
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        title: Text(
                          "Anzahl Tickets:", // Titel für die Gesamtanzahl der Artikel
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        subtitle: Text(
                          cartModel.totalItems
                              .toString(), // Gesamtanzahl der Artikel im Warenkorb
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              cartModel.totalItems
                                  .toString(), // Gesamtanzahl der Artikel im Warenkorb
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 10), // Leerer Platz
                            IconButton(
                              onPressed: cartModel
                                  .clearHunSui, // Löscht alle Artikel aus dem Warenkorb
                              icon: Icon(Icons.delete,
                                  color: Colors.red), // Icon zum Löschen
                            )
                          ],
                        ),
                      ),
                    ),
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
