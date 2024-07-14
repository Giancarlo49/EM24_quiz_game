// Diese Zeile ignoriert bestimmte Linter-Warnungen für die gesamte Datei
// Diese Warnungen werden für dieses Projekt als unwichtig angesehen

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// Definiert eine benutzerdefinierte Schaltfläche (Button) namens MyButton
class MyButton extends StatelessWidget {
  // Definiert die Eigenschaften (Properties) der Schaltfläche
  final String mytext; // Der Text, der auf der Schaltfläche angezeigt wird
  final void Function()?
      event; // Die Funktion, die beim Klicken der Schaltfläche ausgeführt wird

  // Konstruktor für die MyButton-Klasse
  // Der Konstruktor nimmt zwei erforderliche Parameter an: mytext und event
  const MyButton({
    super.key, // Der Schlüssel der übergeordneten Klasse, wird nicht verwendet
    required this.mytext, // Erforderlicher Parameter für den Text der Schaltfläche
    required this.event, // Erforderlicher Parameter für die Funktion, die ausgeführt wird, wenn die Schaltfläche geklickt wird
  });

  @override
  Widget build(BuildContext context) {
    // Rückgabe des Widgets, das die Schaltfläche darstellt
    return GestureDetector(
      onTap:
          event, // Definiert die Funktion, die beim Tippen auf die Schaltfläche ausgeführt wird
      child: Container(
        padding: EdgeInsets.all(18), // Innenabstand des Containers
        decoration: BoxDecoration(
            color: Colors.blue, // Hintergrundfarbe des Containers
            borderRadius:
                BorderRadius.circular(30)), // Abgerundete Ecken des Containers
        child: Row(
          mainAxisAlignment: MainAxisAlignment
              .center, // Zentriert die Elemente in der horizontalen Richtung
          children: [
            Text(
              mytext, // Anzeige des Textes auf der Schaltfläche
              style: TextStyle(
                  fontSize: 20, // Schriftgröße des Textes
                  fontWeight: FontWeight.bold, // Fettdruck des Textes
                  color: Colors.white), // Textfarbe
            ),
            SizedBox(width: 10), // Leerer Platz zwischen Text und Icon
            Icon(
              Icons.arrow_forward, // Das vorwärtsgerichtete Pfeil-Icon
              color: Colors.white, // Farbe des Icons
            ),
          ],
        ),
      ),
    );
  }
}
