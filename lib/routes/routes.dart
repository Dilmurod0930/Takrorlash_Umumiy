import 'package:flutter/material.dart';
import 'package:list_view_list_builderlar/screen/list_view/list_view.dart';
import 'package:list_view_list_builderlar/screen/list_view_builder/list_view_builder.dart';
import 'package:list_view_list_builderlar/screen/list_view_separator/lisr_view_separator.dart';
import 'package:list_view_list_builderlar/screen/stak/stak.dart';

class Routess {
  static final Routess _instanse = Routess.init();
  static Routess get instanse => Routess._instanse;
  Routess.init();
  Route? onGeneret(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case "/list_view":
        return MaterialPageRoute(builder: (context) => ListViewPage());
      case "/list_view_builder":
        return MaterialPageRoute(builder: (context) => ListViewBuilderPage());
      case "/list_view_separator":
        return MaterialPageRoute(builder: (context) => ListViewSeparatorpage());
      case "/stack":
        return MaterialPageRoute(builder: (context) => StackPage());
    }
  }
}
