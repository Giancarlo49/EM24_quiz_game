// Ignoriert bestimmte Warnungen von Flutter Lint
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:em24/components/button.dart'; // Importiert eine benutzerdefinierte Button-Komponente
import 'package:flutter/material.dart'; // Grundlegender Flutter-Import für UI-Elemente

// Definiert eine stateless Widget-Klasse namens StartPage
class StartPage extends StatelessWidget {
  const StartPage({super.key}); // Konstruktor mit Key-Parameter für das Widget

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.lightGreen, // Setzt die Hintergrundfarbe der Seite

      // Stellt sicher, dass der Inhalt innerhalb der sicheren Bereiche des Bildschirms angezeigt wird
      body: SafeArea(
        child: Column(
          // Organisiert die Kinder-Widgets vertikal
          crossAxisAlignment: CrossAxisAlignment
              .center, // Zentriert die Kinder-Widgets horizontal
          children: [
            SizedBox(height: 20), // Schafft vertikalen Abstand
            Row(
              // Organisiert Kinder-Widgets horizontal
              mainAxisAlignment: MainAxisAlignment
                  .center, // Zentriert die Kinder-Widgets vertikal
              children: [
                Text(
                  // Text-Widget für Überschriften
                  "EUROPEAN CUP '24",
                  style: TextStyle(
                    // Definiert den Stil des Textes
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50), // Schafft vertikalen Abstand
            Center(
              // Zentriert sein Kind-Widget
              child: Image.asset(
                // Fügt ein Bild ein
                "lib/images/em24Logo1.png",
                height: 400, // Setzt die Höhe des Bildes
              ),
            ),
            SizedBox(height: 15), // Schafft vertikalen Abstand
            AnimatedTextKit(
              animatedTexts: [
                // Verschiedene Arten von laufenden Texten
                TyperAnimatedText(
                  'Wähle dein Spiel !',
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
              repeatForever: true, // Wiederhole die Animation endlos
              pause:
                  Duration(milliseconds: 250), // Pause zwischen den Animationen
            ),
            SizedBox(height: 20), // Schafft vertikalen Abstand
            Padding(
              // Fügt Innenabstand hinzu
              padding: const EdgeInsets.symmetric(
                  horizontal: 15.0), // Horizontaler Abstand
              child: Text(
                // Text-Widget für Beschreibungen
                "Ticketvorverkauf für die Europa - Meisterschaft 2024 in Deutschland.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 50), // Schafft vertikalen Abstand
            Padding(
              // Fügt Innenabstand hinzu
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Horizontaler Abstand
              child: MyButton(
                // Benutzerdefiniertes Button-Widget
                mytext: "Zu den Tickets", // Text auf dem Button
                event: () => Navigator.pushNamed(context,
                    '/menupage'), // Funktion zum Navigieren auf eine neue Seite
              ),
            ),
          ],
        ),
      ),
    ); // Das Haupt-Widget, das das Layout der Seite definiert
  }
}
