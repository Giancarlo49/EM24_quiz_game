import 'package:em24/components/event_tile.dart'; // Importiert das EventTile-Widget
import 'package:flutter/material.dart'; // Importiert das Material-Design-Paket von Flutter

// Diese Funktion erstellt eine Liste von EventTiles und gibt sie zurück
List<EventTile> createEventList(BuildContext context) {
  return [
    // Erstellt ein EventTile für das Spiel Deutschland vs. Schottland
    EventTile(
      team1: "Germany", // Name des ersten Teams
      team2: "Scotland", // Name des zweiten Teams
      imgTeam1: "lib/images/GER.png", // Bildpfad für das erste Team
      imgTeam2: "lib/images/SCO.png", // Bildpfad für das zweite Team
      city: "Munich", // Stadt, in der das Spiel stattfindet
      date: "14. June", // Datum des Spiels
      time: "21:00", // Uhrzeit des Spiels
      price: "€ 499", // Preis für das Spiel
      details: () => Navigator.pushNamed(context,
          '/gerscopage'), // Funktion, die aufgerufen wird, um Details anzuzeigen
    ),
    // Erstellt ein EventTile für das Spiel Ungarn vs. Schweiz
    EventTile(
      team1: "Hungary", // Name des ersten Teams
      team2: "Switzerland", // Name des zweiten Teams
      imgTeam1: "lib/images/HUN.png", // Bildpfad für das erste Team
      imgTeam2: "lib/images/SUI.png", // Bildpfad für das zweite Team
      city: "Cologne", // Stadt, in der das Spiel stattfindet
      date: "15. June", // Datum des Spiels
      time: "15:00", // Uhrzeit des Spiels
      price: "€ 499", // Preis für das Spiel
      details: () => Navigator.pushNamed(context,
          '/hunsuipage'), // Funktion, die aufgerufen wird, um Details anzuzeigen
    ),
    // Erstellt ein EventTile für das Spiel Spanien vs. Kroatien
    EventTile(
      team1: "Spain", // Name des ersten Teams
      team2: "Croatia", // Name des zweiten Teams
      imgTeam1: "lib/images/ESP.png", // Bildpfad für das erste Team
      imgTeam2: "lib/images/CRO.png", // Bildpfad für das zweite Team
      city: "Berlin", // Stadt, in der das Spiel stattfindet
      date: "15. June", // Datum des Spiels
      time: "18:00", // Uhrzeit des Spiels
      price: "€ 499", // Preis für das Spiel
      details: () {}, // Funktion, die aufgerufen wird, um Details anzuzeigen
    ),
    // Erstellt ein EventTile für das Spiel Italien vs. Albanien
    EventTile(
      team1: "Italy", // Name des ersten Teams
      team2: "Albania", // Name des zweiten Teams
      imgTeam1: "lib/images/ITA.png", // Bildpfad für das erste Team
      imgTeam2: "lib/images/ALB.png", // Bildpfad für das zweite Team
      city: "Dortmund", // Stadt, in der das Spiel stattfindet
      date: "15. June", // Datum des Spiels
      time: "21:00", // Uhrzeit des Spiels
      price: "€ 499", // Preis für das Spiel
      details: () {}, // Funktion, die aufgerufen wird, um Details anzuzeigen
    ),
  ];
}
