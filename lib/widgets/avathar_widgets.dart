import 'package:flutter/material.dart';

// ignore: must_be_immutable
class City extends StatelessWidget {
  String displyimage;
  String place;
  City({required this.displyimage, required this.place});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            displyimage,
            fit: BoxFit.cover,
            width: 70,
            height: 70,
          ),
        ),
        Text(place)
      ],
    );
  }
}
