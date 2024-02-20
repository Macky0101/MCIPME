import 'package:flutter/material.dart';
import 'package:mcipme/screens/DNI/HomePage.dart';

export 'package:flutter/material.dart';

Map<String, WidgetBuilder> getRoutes() {
  return {
    '/': (context) => HomePage(), // Route initiale
    // '/list': (context) => ListScreen(), // Exemple de route secondaire
    // Ajoutez ici d'autres routes en suivant la même structure
  };
}
