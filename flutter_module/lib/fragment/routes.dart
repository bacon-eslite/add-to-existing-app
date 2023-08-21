import 'package:flutter/material.dart';
import 'package:flutter_module/fragment/fragment_widget.dart';

class FragmentRoutes {
  static FragmentRoutes? _instance;

  FragmentRoutes._();

  factory FragmentRoutes() => _instance ??= FragmentRoutes._();

  Map<String, Route> routes = {
    fragment: MaterialPageRoute(builder: (context) => const FragmentWidget()),
  };

  static String fragment = '/fragment';
}
