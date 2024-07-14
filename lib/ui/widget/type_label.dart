import 'package:flutter/material.dart';

class TypeLabel extends StatelessWidget {

  final String type;

  TypeLabel({
    super.key,
    required this.type,
  });

  final Map<String, Color> backColor = {
    'Normal': const Color(0xFFaea886),
    'Fire': const Color(0xFFf45c19),
    'Water': const Color(0xFF4a96d6),
    'Grass': const Color(0xFF28b25c),
    'Electric': const Color(0xFFeaa317),
    'Ice': const Color(0xFF45a9c0),
    'Fighting': const Color(0xFF9a3d3e),
    'Poison': const Color(0xFF8f5b98),
    'Ground': const Color(0xFF916d3c),
    'Flying': const Color(0xFF7e9ecf),
    'Psychic': const Color(0xFFd56d8b),
    'Bug': const Color(0xFF989001),
    'Rock': const Color(0xFF878052),
    'Ghost': const Color(0xFF555fa4),
    'Dragon': const Color(0xFF454ba6),
    'Dark': const Color(0xFF7a0049),
    'Steel': const Color(0xFF9b9b9b),
    'Fairy': const Color(0xFFffbbff)
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      padding: const EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
      decoration: BoxDecoration(
        color: backColor[type],
        borderRadius: BorderRadius.circular(100)
      ),
      child: Text(
        type,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

}