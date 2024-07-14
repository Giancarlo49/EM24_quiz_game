// Diese Zeile ignoriert bestimmte Linter-Warnungen für die gesamte Datei

// ignore_for_file: prefer_const_constructors

import 'package:em24/cart_page.dart'; // Importiert die CartPage
import 'package:em24/models/cart_model.dart'; // Importiert das CartModel
import 'package:em24/pages/event_pages/ger_sco.dart'; // Importiert die GerScoPage
import 'package:em24/pages/event_pages/hun_sui.dart'; // Importiert die HunSuiPage
import 'package:em24/pages/menu_page.dart'; // Importiert die MenuPage
import 'package:em24/pages/start_page.dart'; // Importiert die StartPage
import 'package:flutter/material.dart'; // Importiert das Material-Design-Paket von Flutter
import 'package:provider/provider.dart'; // Importiert Provider für das State Management
import 'package:sizer/sizer.dart'; // Importiert Sizer für die responsiven Designs

// Die main-Funktion, die die App startet
void main() {
  // Initialisiert das CartModel und reicht es an die App weiter
  runApp(
    ChangeNotifierProvider(
      child: MyApp(),
      create: (context) => CartModel(),
    ),
  );
}

// Die MyApp-Klasse, die die Haupt-App definiert
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Verwendet Sizer für responsives Design basierend auf Bildschirmgröße
    return Sizer(
      builder: (context, orientation, deviceType) {
        // Erstellt und konfiguriert die MaterialApp
        return MaterialApp(
          debugShowCheckedModeBanner: false, // Deaktiviert das Debug-Banner
          home: StartPage(), // Startseite der App
          routes: {
            '/startpage': (context) => StartPage(), // Route zur Startseite
            '/menupage': (context) => MenuPage(), // Route zum Menü
            '/gerscopage': (context) => GerScoPage(), // Route zur GerScoPage
            '/hunsuipage': (context) => HunSuiPage(), // Route zur HunSuiPage
            '/cartpage': (context) => CartPage(), // Route zum Warenkorb
          },
        );
      },
    );
  }
}
