// Diese Zeile ignoriert bestimmte Linter-Warnungen für die gesamte Datei
// Diese Warnungen werden für dieses Projekt als unwichtig angesehen

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// Definiert eine benutzerdefinierte Widget-Klasse namens EventTile
class EventTile extends StatelessWidget {
  // Definiert die Eigenschaften (Properties) des EventTiles
  final String team1; // Name des ersten Teams
  final String team2; // Name des zweiten Teams
  final String imgTeam1; // Bild für das erste Team
  final String imgTeam2; // Bild für das zweite Team
  final String city; // Stadt, in der das Event stattfindet
  final String date; // Datum des Events
  final String time; // Uhrzeit des Events
  final String price; // Preis für das Event
  final void Function()? details; // Funktion für weitere Details zum Event

  // Konstruktor für die EventTile-Klasse
  // Der Konstruktor nimmt erforderliche Parameter an, um ein EventTile zu erstellen
  const EventTile({
    super.key, // Der Schlüssel der übergeordneten Klasse, wird nicht verwendet
    required this.team1, // Erforderlicher Parameter für den Namen des ersten Teams
    required this.team2, // Erforderlicher Parameter für den Namen des zweiten Teams
    required this.imgTeam1, // Erforderlicher Parameter für das Bild des ersten Teams
    required this.imgTeam2, // Erforderlicher Parameter für das Bild des zweiten Teams
    required this.city, // Erforderlicher Parameter für die Stadt, in der das Event stattfindet
    required this.date, // Erforderlicher Parameter für das Datum des Events
    required this.time, // Erforderlicher Parameter für die Uhrzeit des Events
    required this.price, // Erforderlicher Parameter für den Preis des Events
    required this.details, // Erforderlicher Parameter für die Funktion für weitere Details zum Event
  });

  @override
  Widget build(BuildContext context) {
    // Rückgabe des Widgets, das ein EventTile darstellt
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: 2.5.h), // Seitlicher Abstand des Containers
      width: 240, // Breite des Containers
      decoration: BoxDecoration(
        color: Colors.blue, // Hintergrundfarbe des Containers
        borderRadius: BorderRadius.circular(
            20), // Abgerundete Ecken mit einem Radius von 20
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0), // Innerer Abstand des Containers
        child: GestureDetector(
          onTap:
              details, // Funktion, die beim Tippen auf das Widget ausgeführt wird
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "lib/images/spielfeld.png"), // Bild für den Container
                fit: BoxFit
                    .cover, // Bildfüllung, um den verfügbaren Platz auszufüllen
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Darstellung des ersten Teams mit seinem Bild
                  Row(
                    children: [
                      Image.asset(
                        imgTeam1,
                        width: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        team1,
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  // Darstellung des "vs"-Textes
                  Text(
                    "vs",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // Darstellung des zweiten Teams mit seinem Bild
                  Row(
                    children: [
                      Image.asset(
                        imgTeam2,
                        width: 30,
                      ),
                      SizedBox(width: 10),
                      Text(
                        team2,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 8), // Leerer vertikaler Abstand
                  // Darstellung der Stadt des Events
                  Text(
                    city,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  // Darstellung des Datums des Events
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  // Darstellung der Uhrzeit des Events
                  Text(
                    time,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                    ),
                  ),
                  // Darstellung des Preises des Events
                  Text(
                    price,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
