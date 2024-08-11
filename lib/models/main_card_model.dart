import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class MainCardModel {
  final IconData iconData;
  final String? title, subTitle, count;
  final String? percentage;
  final Color? color;

  MainCardModel(
      {required this.iconData,
        required this.title,
        required this.subTitle,
        required this.count,
        required this.percentage,
        required this.color});
}

List myCards = [
  MainCardModel(
      title: "Monthly Payroll",
      iconData: Icons.home,
      subTitle: "USD",
      count: "\$ 13900",
      percentage: "-10%",
      color: Colors.red),
  MainCardModel(
      title: "Company Expanses",
      subTitle: "USD",
      iconData: HugeIcons.strokeRoundedExpander,
      count: "\$ 23100",
      percentage: "-8%",
      color: Colors.red),
  MainCardModel(
      title: "Total Employee",
      subTitle: "People",
      iconData: CupertinoIcons.group,
      count: "4300",
      percentage: "+10%",
      color: Colors.green),
  MainCardModel(
      title: "New Hires",
      subTitle: "People",
      iconData: Icons.person,
      count: "102",
      percentage: "+2%",
      color: Colors.green),
];