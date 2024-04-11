import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Choose Payment Method'),
        ),
        body: Container(
          color: Colors.blue,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'CHOOSE YOUR PAYMENT',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentOption(
                    image: 'assets/mastercard_logo.png',
                    label: 'Master Card',
                  ),
                  PaymentOption(
                    image: 'assets/promptpay.png',
                    label: 'พร้อมเพย์',
                  ),
                  PaymentOption(
                    image: 'assets/scb.png',
                    label: 'SCB',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  PaymentOption(
                    image: 'assets/truemoney.png',
                    label: 'true money',
                  ),
                  PaymentOption(
                    image: 'assets/kbank.png',
                    label: 'KBank',
                  ),
                  PaymentOption(
                    image: 'assets/krungthai.png',
                    label: 'ธนาคารกรุงไทย',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentOption extends StatelessWidget {
  final String image;
  final String label;

  PaymentOption({required this.image, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 80,
            height: 80,
          ),
          SizedBox(height: 10),
          Text(
            label,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
