import 'package:flutter/material.dart';
import 'package:hotel_management/home/hotel_deatils_page.dart';

// ignore: must_be_immutable
class Book extends StatelessWidget {
  // const Book({super.key});
  String image;
  Book({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 300,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                image,
              ))),
      child: Stack(
        children: [
          const Text(
            'Zero hours to go. Zero Worries to give.',
            style: TextStyle(color: Color.fromARGB(255, 244, 240, 240)),
          ),
          const Positioned(
              top: 15,
              child: Text(
                'up to 70% off on lest minute',
                style: TextStyle(color: Color.fromARGB(255, 249, 248, 248)),
              )),
          Positioned(
              bottom: 10,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HotelDetailsScreen(),
                        ));
                  },
                  child: const Text('Bokk now')))
        ],
      ),
    );
  }
}
