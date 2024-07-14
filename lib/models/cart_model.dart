import 'package:flutter/material.dart'; // Importiert das Material-Design-Paket von Flutter

class CartModel extends ChangeNotifier {
  int gersco =
      0; // Anzahl der Artikel für das Spiel Deutschland vs. Schottland im Warenkorb
  int hunsui =
      0; // Anzahl der Artikel für das Spiel Ungarn vs. Schweiz im Warenkorb

  // Methode zum Hinzufügen eines Deutschland vs. Schottland-Artikels zum Warenkorb
  void addGerSco() {
    gersco++; // Erhöht die Anzahl der Deutschland vs. Schottland-Artikel im Warenkorb um 1
    notifyListeners(); // Benachrichtigt alle Abonnenten über die Änderung
  }

  // Methode zum Entfernen eines Deutschland vs. Schottland-Artikels aus dem Warenkorb
  void removeGerSco() {
    if (gersco > 0) {
      gersco--; // Verringert die Anzahl der Deutschland vs. Schottland-Artikel im Warenkorb um 1, wenn die Anzahl größer als 0 ist
      notifyListeners(); // Benachrichtigt alle Abonnenten über die Änderung
    }
  }

  // Methode zum vollständigen Entfernen aller Deutschland vs. Schottland-Artikel aus dem Warenkorb
  void clearGerSco() {
    gersco =
        0; // Setzt die Anzahl der Deutschland vs. Schottland-Artikel im Warenkorb auf 0 zurück
    notifyListeners(); // Benachrichtigt alle Abonnenten über die Änderung
  }

  // Methode zum Hinzufügen eines Ungarn vs. Schweiz-Artikels zum Warenkorb
  void addHunSui() {
    hunsui++; // Erhöht die Anzahl der Ungarn vs. Schweiz-Artikel im Warenkorb um 1
    notifyListeners(); // Benachrichtigt alle Abonnenten über die Änderung
  }

  // Methode zum Entfernen eines Ungarn vs. Schweiz-Artikels aus dem Warenkorb
  void removeHunSui() {
    if (hunsui > 0) {
      hunsui--; // Verringert die Anzahl der Ungarn vs. Schweiz-Artikel im Warenkorb um 1, wenn die Anzahl größer als 0 ist
      notifyListeners(); // Benachrichtigt alle Abonnenten über die Änderung
    }
  }

  // Methode zum vollständigen Entfernen aller Ungarn vs. Schweiz-Artikel aus dem Warenkorb
  void clearHunSui() {
    hunsui =
        0; // Setzt die Anzahl der Ungarn vs. Schweiz-Artikel im Warenkorb auf 0 zurück
    notifyListeners(); // Benachrichtigt alle Abonnenten über die Änderung
  }

  // Methode, um die Gesamtanzahl der Artikel im Warenkorb zurückzugeben
  int get totalItems => gersco + hunsui;
}
