import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class SelectBrandCar extends StatelessWidget {
  const SelectBrandCar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Brand Car Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // กลับไปยังหน้าก่อนหน้านี้
          },
          child: Text('Go back to Login Page'),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // title: Text('Select Brand car'),
        ),
        body: SingleChildScrollView(
          child: Container(
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
                      'Select Brand car',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PaymentOption(
                      image: 'assets/mg.png',
                      label: 'MG',
                      onPressed: () => _onPressed(context, 'MG'),
                    ),
                    PaymentOption(
                      image: 'assets/toyota.png',
                      label: 'TOYOTA',
                      onPressed: () => _onPressed(context, 'TOYOTA'),
                    ),
                    PaymentOption(
                      image: 'assets/porsche.png',
                      label: 'Porsche',
                      onPressed: () => _onPressed(context, 'Porsche'),
                    ),
                    PaymentOption(
                      image: 'assets/benz.png',
                      label: 'Benz',
                      onPressed: () => _onPressed(context, 'Benz'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PaymentOption(
                      image: 'assets/suzuki.png',
                      label: 'Suzuki',
                      onPressed: () => _onPressed(context, 'Suzuki'),
                    ),
                    PaymentOption(
                      image: 'assets/bmw.png',
                      label: 'BMW',
                      onPressed: () => _onPressed(context, 'BMW'),
                    ),
                    PaymentOption(
                      image: 'assets/tesla.png',
                      label: 'Tesla',
                      onPressed: () => _onPressed(context, 'Tesla'),
                    ),
                    PaymentOption(
                      image: 'assets/honda.png',
                      label: 'Honda',
                      onPressed: () => _onPressed(context, 'Honda'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PaymentOption(
                      image: 'assets/audi.png',
                      label: 'AUDI',
                      onPressed: () => _onPressed(context, 'AUDI'),
                    ),
                    PaymentOption(
                      image: 'assets/hyundai.png',
                      label: 'HYUNDAI',
                      onPressed: () => _onPressed(context, 'HYUNDAI'),
                    ),
                    PaymentOption(
                      image: 'assets/nissan.png',
                      label: 'NISSAN',
                      onPressed: () => _onPressed(context, 'NISSAN'),
                    ),
                    PaymentOption(
                      image: 'assets/ford.png',
                      label: 'FORD',
                      onPressed: () => _onPressed(context, 'FORD'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PaymentOption(
                      image: 'assets/chevrolet.png',
                      label: 'CHEVROLET',
                      onPressed: () => _onPressed(context, 'CHEVROLET'),
                    ),
                    PaymentOption(
                      image: 'assets/ferrari.png',
                      label: 'FERRARI',
                      onPressed: () => _onPressed(context, 'FERRARI'),
                    ),
                    PaymentOption(
                      image: 'assets/mini.png',
                      label: 'MINI',
                      onPressed: () => _onPressed(context, 'MINI'),
                    ),
                    PaymentOption(
                      image: 'assets/volvo.png',
                      label: 'VOLVO',
                      onPressed: () => _onPressed(context, 'VOLVO'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    PaymentOption(
                      image: 'assets/mitsubishi.png',
                      label: 'mitsubishi',
                      onPressed: () => _onPressed(context, 'mitsubishi'),
                    ),
                    PaymentOption(
                      image: 'assets/mazda.png',
                      label: 'mazda',
                      onPressed: () => _onPressed(context, 'mazda'),
                    ),
                    PaymentOption(
                      image: 'assets/subaru.png',
                      label: 'subaru',
                      onPressed: () => _onPressed(context, 'subaru'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onPressed(BuildContext context, String brand) {
    // Handle button press, for now just print the selected brand
    print('Selected brand: $brand');
    // You can add your logic here to navigate or perform any action based on the selected brand
  }
}

class PaymentOption extends StatelessWidget {
  final String image;
  final String label;
  final VoidCallback onPressed;

  PaymentOption({required this.image, required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
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
      ),
    );
  }
}
