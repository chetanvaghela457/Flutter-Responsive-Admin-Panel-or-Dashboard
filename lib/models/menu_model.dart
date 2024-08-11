import 'package:flutter/material.dart';

class MenuModel {
  IconData icon;
  String title;

  MenuModel({required this.icon, required this.title});
}

List<MenuModel> menu = [
  MenuModel(icon: Icons.home, title: "Dashboard"),
  MenuModel(icon: Icons.supervised_user_circle_outlined, title: "Employee"),
  MenuModel(icon: Icons.payment_rounded, title: "Payroll"),
  MenuModel(icon: Icons.ac_unit, title: "Attendance"),
  MenuModel(icon: Icons.menu_book, title: "Permission"),
  MenuModel(icon: Icons.other_houses_rounded, title: "Company"),
];

List<MenuModel> bottomMenu = [
  MenuModel(icon: Icons.settings, title: "Settings"),
  MenuModel(icon: Icons.logout, title: "Log Out"),
];