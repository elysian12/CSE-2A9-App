import 'package:flutter/cupertino.dart';

class Categorie {
  final String title;
  final String subtitle;
  final String img;
  final String key;
  final List<Color> gradientColor;

  Categorie(
      {@required this.title,
      @required this.subtitle,
      @required this.img,
      this.gradientColor,
      this.key});
}
