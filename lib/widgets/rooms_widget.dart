import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Rom extends StatelessWidget {
  String image;
  String text;
  Rom({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250,
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    image,
                  ))),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(text,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
      ],
    );
  }
}
