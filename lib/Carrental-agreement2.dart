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
          title: Center(child: Text('Carrental-agreement PAGE2')), // ใช้ Center widget รอบ Text widget
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.lightBlueAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Container(
              width: 350, // ปรับขนาดกล่องตามความต้องการ
              height: 600, // ปรับขนาดกล่องตามความต้องการ
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView( // ใช้ SingleChildScrollView เพื่อปรับความสูงของ Column
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // รูปภาพที่จะใส่ในกล่อง
                    Image.asset(
                      'assets/456.png', // ต้องแทนที่ด้วยที่อยู่ของรูปภาพของคุณ
                      width: 500, // ปรับขนาดรูปภาพตามความต้องการ
                      height: 700, // ปรับขนาดรูปภาพตามความต้องการ
                    ),
                    SizedBox(height: 20), // เพิ่มระยะห่างระหว่างรูปภาพกับปุ่ม
                    ElevatedButton(
                      onPressed: () {
                        // การทำงานเมื่อปุ่มถูกกด
                        print('Next button pressed');
                      },
                      child: Text('Next'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
