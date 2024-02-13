import 'package:flutter/material.dart';
import 'package:hotel_management/payment/payment_page.dart';
import 'package:hotel_management/widgets/option_button.dart';

class HotelDetailsScreen extends StatefulWidget {
  const HotelDetailsScreen({Key? key}) : super(key: key);

  @override
  State<HotelDetailsScreen> createState() => _HotelDetailsScreenState();
}

class _HotelDetailsScreenState extends State<HotelDetailsScreen> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 194, 194, 194),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 450,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Colors.amber,
                    image: DecorationImage(
                        image: AssetImage('assets/city/city9.jpg'),
                        fit: BoxFit.cover)),
              ),
              Positioned(
                top: 20,
                left: 10,
                child: CircleAvatar(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back))),
              )
            ],
          ),
          const Text(
            'Silent Dragon',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.star),
                SizedBox(
                  width: 10,
                ),
                Text('4.7(243)')
              ],
            ),
          ),
          const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('5.7 Km from city center .Jayanager,Bangalore'),
              )),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.access_alarms_outlined),
                SizedBox(
                  width: 10,
                ),
                Text('Only 4 rooms left at this Price')
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    // title: const Text('Book Now'),
                    actions: [
                      RadioButtonWidget(
                          options: 'Select Food option:',
                          item1: 'Add Food',
                          item2: 'Not Add Food'),
                      RadioButtonWidget(
                          options: 'Select Room option:',
                          item1: ' A/C',
                          item2: 'Non A/C  '),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _selectedDate == null
                                  ? 'No date selected'
                                  : 'Selected Date: ${_selectedDate!.year}-${_selectedDate!.month}-${_selectedDate!.day}',
                            ),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () => _selectDate(context),
                              child: Container(
                                height: 50,
                                width: 300,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.black)),
                                child: const Center(
                                    child: Text(
                                  'Select Date',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PaymentScreen(),
                              ));
                        },
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 191, 189, 189),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black)),
                          child: const Center(
                              child: Text(
                            'Pay Now',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black)),
              child: const Center(
                  child: Text(
                'Book Now',
                style: TextStyle(fontWeight: FontWeight.bold),
              )),
            ),
          )
        ],
      ),
    );
  }
}
