import 'package:flutter/material.dart';
import 'package:flutter_project_mobile/%E0%B9%87Honda.dart';

void main() {
  runApp(MyApp25());
}

class MyApp25 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20),
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
                  onTap: () {
                       Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyForm15()), // Navigate to MyForm
                    );
                    // Handle onTap event for this card
                    print('Honda Civic 2019(FC) tapped');
                  },
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda Jazz 2019',
                  price: '1000 Bath / Day',
                  image: 'assets/new-honda-jass.png',
                  onTap: () {
                    // Handle onTap event for this card
                    print('Honda Jazz 2019 tapped');
                  },
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda City 2014',
                  price: '1000 Bath / Day',
                  image: 'assets/Hondacity2014.png',
                  onTap: () {
                    // Handle onTap event for this card
                    print('Honda City 2014 tapped');
                  },
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda City 2013',
                  price: '750 Bath / Day',
                  image: 'assets/Hondacity2013.png',
                  onTap: () {
                    // Handle onTap event for this card
                    print('Honda City 2013 tapped');
                  },
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda Civic 2022(FL)',
                  price: '1400 Bath / Day',
                  image: 'assets/hondacivic2022.png',
                  onTap: () {
                    // Handle onTap event for this card
                    print('Honda Civic 2022(FL) tapped');
                  },
                ),
                SizedBox(height: 20),
                GenerationCard(
                  model: 'Honda Bio 2023',
                  price: '1400 Bath / Day',
                  image: 'assets/hondabio.png',
                  onTap: () {
                    // Handle onTap event for this card
                    print('Honda Bio 2023 tapped');
                  },
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
  final VoidCallback? onTap; // Callback function to handle tap events

  GenerationCard({required this.model, required this.price, required this.image, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Assign onTap callback
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color.fromARGB(255, 5, 34, 85), const Color.fromARGB(255, 5, 34, 85)], // เปลี่ยนสี Gradient
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: onTap, // Assign onTap callback
              child: Container(
                height: 120,
                alignment: Alignment.center,
                child: Image.asset(
                  image,
                  height: 100,
                  fit: BoxFit.contain,
                ),
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
      ),
    );
  }
}
//1