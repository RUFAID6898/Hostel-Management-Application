import 'package:flutter/material.dart';
import 'package:hotel_management/widgets/avathar_widgets.dart';
import 'package:hotel_management/widgets/booking_widget.dart';
import 'package:hotel_management/widgets/rooms_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 90,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                  color: const Color.fromARGB(255, 193, 187, 187)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Search for city,location or hotel',
                    icon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    focusedBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 90,
            child: ListView(
              padding: const EdgeInsets.only(right: 10),
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 10,
                ),
                City(displyimage: 'assets/city/city.jpg', place: 'Banglore'),
                const SizedBox(
                  width: 10,
                ),
                City(displyimage: 'assets/city/city1.jpg', place: 'Mubai'),
                const SizedBox(
                  width: 10,
                ),
                City(displyimage: 'assets/city/city2.jpg', place: 'Maharastra'),
                const SizedBox(
                  width: 10,
                ),
                City(displyimage: 'assets/city/city3.jpg', place: 'Hidrabadh'),
                const SizedBox(
                  width: 10,
                ),
                City(displyimage: 'assets/city/city4.jpg', place: 'delhi'),
                const SizedBox(
                  width: 10,
                ),
                City(displyimage: 'assets/city/city5.jpg', place: 'punai'),
                const SizedBox(
                  width: 10,
                ),
                City(displyimage: 'assets/city/city6.jpg', place: 'goa'),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Ready Set ROM',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 230,
            padding: const EdgeInsets.all(10),
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Book(image: 'assets/city/city4.jpg'),
              const SizedBox(
                width: 10,
              ),
              Book(image: 'assets/city/city3.jpg')
            ]),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
              onPressed: () {},
              child: const Text(
                'View all offer',
                style: TextStyle(color: Colors.black),
              )),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Pay with Rupay',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 300,
            padding: const EdgeInsets.all(10),
            width: 300,
            child: Book(image: 'assets/city/city5.jpg'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'The coolest premium brand',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 300,
            width: 300,
            child: Book(image: 'assets/city/city4.jpg'),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Tap for the best experiance',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 300,
            width: 300,
            child: Book(image: 'assets/city/city3.jpg'),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 300,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Rom(image: 'assets/city/city9.jpg', text: 'ROM Tounhows'),
                const SizedBox(
                  width: 20,
                ),
                Rom(image: 'assets/city/city7.jpg', text: 'Lexury Collection'),
                const SizedBox(
                  width: 20,
                ),
                Rom(image: 'assets/city/city8.jpg', text: 'Homestay'),
              ]),
            ),
          ),
        ]),
      ),
      drawer: Container(
        color: const Color.fromARGB(255, 253, 253, 253),
        width: 300,
        child: ListView(children: [
          const ListTile(
            leading: Icon(Icons.person),
            title: Text('Gest'),
            subtitle: Text('login'),
          ),
          const Divider(
            thickness: 1,
          ),
          Container(
            height: 40,
            width: 20,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(40)),
            child: const Center(
                child: Text(
              'Book your ROM',
              style: TextStyle(color: Color.fromARGB(255, 250, 247, 247)),
            )),
          )
        ]),
      ),
    );
  }
}
