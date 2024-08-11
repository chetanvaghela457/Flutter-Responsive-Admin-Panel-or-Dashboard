import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GraphModel {
  String subTitle;
  String title;
  Color color;
  String image;

  GraphModel(
      {required this.subTitle,
      required this.title,
      required this.color,
      required this.image});
}

List<GraphModel> graphCardData = [
  GraphModel(
      title: "Senior Level",
      subTitle: "2000 Person",
      color: Color(0xFFCE6462),
      image: ''),
  GraphModel(
      title: "Middle Level",
      subTitle: "1500 Person",
      color: Color(0xFF4F53CE),
      image: ''),
  GraphModel(
      title: "Junior Level",
      subTitle: "800 Person",
      color: Color(0xFFEEA468),
      image: ''),
  GraphModel(
      title: "Male",
      subTitle: "2500 Person",
      color: Color(0xFFA83CE5),
      image: ''),
  GraphModel(
      title: "Female",
      subTitle: "1800 Person",
      color: Color(0xFF3395F7),
      image: '')
];

List<GraphModel> countryData = [
  GraphModel(
      title: "USA",
      subTitle: "204 Person",
      color: Color(0xFFCE6462),
      image: 'assets/images/us.svg'),
  GraphModel(
      title: "UK",
      subTitle: "500 Person",
      color: Color(0xFF4F53CE),
      image: 'assets/images/gb.svg'),
  GraphModel(
      title: "India",
      subTitle: "800 Person",
      color: Color(0xFFEEA468),
      image: 'assets/images/in.svg'),
  GraphModel(
      title: "Japan",
      subTitle: "2500 Person",
      color: Color(0xFFA83CE5),
      image: 'assets/images/jp.svg'),
  GraphModel(
      title: "Indonesia",
      subTitle: "1800 Person",
      color: Color(0xFF3395F7),
      image: 'assets/images/id.svg'),
];
