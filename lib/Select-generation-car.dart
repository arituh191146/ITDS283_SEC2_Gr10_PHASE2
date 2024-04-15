import 'package:flutter/material.dart';
// import '็Honda.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ลบปุ่ม debug มุมขวาบน
      home: Scaffold(
        
        appBar: AppBar(
          // title: Text('Select Generation Car'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20), // ระยะห่างระหว่าง AppBar กับหัวข้อ "Select Generation Car"
                SizedBox(
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                    ),
                    child: Text(
                      'Select Generation Car',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda Civic 2019(FC)',
                  price: '1250 Bath / Day',
                  image: 'assets/Honda-Civic-PNG-Photo.png',
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda Jazz 2019',
                  price: '1000 Bath / Day',
                  image: 'assets/new-honda-jass.png',
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda City 2014',
                  price: '1000 Bath / Day',
                  image: 'assets/Hondacity2014.png',
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda City 2013',
                  price: '750 Bath / Day',
                  image: 'assets/Hondacity2013.png',
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda Civic 2022(FL)',
                  price: '1400 Bath / Day',
                  image: 'assets/hondacivic2022.png',
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda Bio 2023',
                  price: '1400 Bath / Day',
                  image: 'assets/hondabio.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GenerationCard extends StatelessWidget {
  final String model;
  final String price;
  final String image;

  GenerationCard({required this.model, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.lightBlueAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 120,
            alignment: Alignment.center,
            child: Image.asset(
              image,
              height: 100,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  model,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 5),
                Text(
                  price,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
