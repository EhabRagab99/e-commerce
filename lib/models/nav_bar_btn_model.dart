import 'package:flutter/material.dart';

class NavBarBtnModel {
  final int id;
  final IconData icon;
  final String name;
  final Widget routeName;

  NavBarBtnModel({
    required this.id,
    required this.icon,
    required this.name,
    required this.routeName,
  });
}
