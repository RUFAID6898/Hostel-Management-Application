import 'package:flutter/material.dart';
import 'package:hotel_management/home/home_page.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Payment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Choose Payment Method',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                _showPaymentSuccessSnackbar(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://th.bing.com/th/id/OIP.VO3gG9MlgAkEttoozGPFsAAAAA?rs=1&pid=ImgDetMain'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Pay with Google Pay',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                _showPaymentSuccessSnackbar(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                child: const Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      foregroundImage: NetworkImage(
                          'https://i.pinimg.com/originals/b2/e1/af/b2e1af76fbbe9bc446544b8fa71b37b1.png'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Pay with PhonePe',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Or Enter Card Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Card Number',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Expiration Date',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  flex: 1,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'CVV',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                _showPaymentSuccessSnackbar(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: Container(
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                    child: Text(
                  'Pay with Card',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showPaymentSuccessSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Payment Successful!'),
      ),
    );
  }
}
