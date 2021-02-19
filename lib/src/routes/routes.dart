import 'package:flutter/material.dart';
import 'package:semillero/src/pages/alert_page.dart';
import 'package:semillero/src/pages/animated_container.dart';
import 'package:semillero/src/pages/avatar_page.dart';
import 'package:semillero/src/pages/card_page.dart';
import 'package:semillero/src/pages/form_page.dart';
import 'package:semillero/src/pages/home_page.dart';
import 'package:semillero/src/pages/products/product_page.dart';
import 'package:semillero/src/pages/input_page.dart';
import 'package:semillero/src/pages/listview_page.dart';
import 'package:semillero/src/pages/products/products_list_page.dart';
import 'package:semillero/src/pages/slider_page.dart';
// Pages

Map<String, WidgetBuilder> getAplicationRoute() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
    'slider': (BuildContext context) => SliderPage(),
    'list': (BuildContext context) => ListviewPage(),
    'forms': (BuildContext context) => FormPage(),
    'products': (BuildContext context) => ProductsListPage(),
    'http': (BuildContext context) => ProductPage(),
  };
}
