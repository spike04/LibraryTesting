import 'package:flutter/material.dart';

import './route_paths.dart' as routes;
import '../screens.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.HomeRoute:
      return MaterialPageRoute(builder: (context) => HomePage());
    case routes.WithListRoute:
      return MaterialPageRoute(builder: (context) => WithListView());
    case routes.WithGridRoute:
      return MaterialPageRoute(builder: (context) => WithGridView());
    case routes.WithColumnRoute:
      return MaterialPageRoute(builder: (context) => WithColumn());
    default:
      return MaterialPageRoute(builder: (context) => HomePage());
  }
}
