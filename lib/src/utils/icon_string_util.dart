import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open': Icons.folder_open,
  'donut_large': Icons.donut_large,
  'input': Icons.input,
  'slideshow': Icons.slideshow,
  'list': Icons.list,
  'attachment': Icons.attachment,
  'http': Icons.http,
  'storefront': Icons.storefront,
};

Icon getIcon(String iconName) {
  return Icon(_icons[iconName], color: Colors.blue);
}
