// Diese Zeile ignoriert bestimmte Linter-Warnungen für die gesamte Datei
// Diese Warnungen werden für dieses Projekt als unwichtig angesehen

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:em24/components/button.dart'; // Importiert das Button-Widget
import 'package:em24/components/event_tile.dart'; // Importiert das EventTile-Widget
import 'package:flutter/material.dart'; // Importiert das Material-Design-Paket von Flutter
import 'package:em24/data/event_data.dart'; // Importiert die Event-Daten

// Die MenuPage ist ein StatefulWidget, da sie den Dark Mode speichert
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() =>
      _MenuPageState(); // Erstellt den zugehörigen State
}

// Der zugehörige State für die MenuPage
class _MenuPageState extends State<MenuPage> {
  bool isDarkMode = false; // Variable zur Verfolgung des Dark Modes

  @override
  Widget build(BuildContext context) {
    // Initialisiert die EventList mit dem aktuellen Context
    final List<EventTile> eventList = createEventList(context);
    return Scaffold(
      backgroundColor: isDarkMode
          ? Colors.black
          : Colors.lightGreen, // Hintergrundfarbe basierend auf Dark Mode
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
        leading: Icon(Icons.menu, color: Colors.white), // Icon für das Menü
        actions: [
          // Aktionen in der AppBar
          IconButton(
            onPressed: () {
              setState(() {
                isDarkMode = !isDarkMode; // Ändert den Dark Mode
              });
            },
            icon: isDarkMode
                ? Icon(Icons.light_mode,
                    color: Colors.white) // Icon für Dark Mode
                : Icon(Icons.dark_mode),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18), // Abstand nach rechts
            child: IconButton(
              icon: Icon(Icons.shopping_cart,
                  color: Colors.white), // Icon für den Warenkorb
              onPressed: () => Navigator.pushNamed(
                  context, '/cartpage'), // Öffnet die CartPage
            ),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20), // Abstand zur AppBar
          Container(
            // Widget für den Bahn Ticket Deal
            padding: EdgeInsets.all(25),
            margin: EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: Colors.green, // Hintergrundfarbe des Containers
              borderRadius: BorderRadius.circular(20), // Abgerundete Ecken
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Widgets für den Bahn Ticket Deal
                Column(
                  children: [
                    // Informationen und Button zum Buchen des Bahn Tickets
                    Text(
                      "Bahn Ticket",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "15% sparen",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 15),
                    MyButton(
                      mytext: "Buchen",
                      event: () {},
                    )
                  ],
                ),
                Column(
                  children: [
                    // Logo und Name der Deutschen Bahn
                    Image.asset(
                      "lib/images/dbLogo1.png",
                      height: 100,
                    ),
                    Text(
                      "Deutsche Bahn",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 15), // Leerer Platz
          Padding(
            // Widget für das Suchfeld
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Suche Begegnungen", // Platzhaltertext im Suchfeld
                prefixIcon:
                    Icon(Icons.search, color: Colors.white), // Lupe Icon
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                    width: 2, // Kontur des Suchfeldes
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // Leerer Platz
          Text(
            "Alle Spiele", // Überschrift für die Liste aller Spiele
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 5), // Leerer Platz
          Expanded(
            // Liste aller Spiele
            child: ListView.builder(
              itemBuilder: (context, index) => eventList[index],
              itemCount: eventList.length,
              scrollDirection:
                  Axis.horizontal, // Horizontales Scrollen für die Liste
            ),
          ),
          SizedBox(height: 15), // Leerer Platz
          Text(
            "Angebot", // Überschrift für das Angebot
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8), // Leerer Platz
          Container(
            // Container für das Angebot
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.blue, // Hintergrundfarbe des Containers
              borderRadius: BorderRadius.circular(15), // Abgerundete Ecken
            ),
            child: Row(
              children: [
                // Widgets für das Angebot
                Image.asset(
                  "lib/images/em24Logo1.png", // EM24 Logo
                  height: 84, // Höhe des Logos
                ),
                SizedBox(width: 25), // Leerer Platz
                Column(
                  // Informationen zum Angebot
                  children: [
                    Text(
                      "Tickets für das Finale", // Titel des Angebots
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "+ Anreise und Übernachtung", // Zusätzliche Informationen zum Angebot
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "für 2 Personen", // Weitere Informationen zum Angebot
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 8), // Leerer Platz
        ],
      ),
    );
  }
}
