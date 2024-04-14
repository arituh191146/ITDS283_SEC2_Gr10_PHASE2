import 'package:flutter/material.dart';
import 'Carrental-agreement2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // บรรทัดนี้จะปิด DEBUG มุมซ้ายบน
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Car Rental Agreement PAGE1')), // ใช้ Center widget รอบ Text widget
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // เมื่อกดปุ่มนี้จะทำการย้อนกลับไปหน้าที่แล้ว
            },
          ),
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
                      'assets/123.png', // ต้องแทนที่ด้วยที่อยู่ของรูปภาพของคุณ
                      width: 500, // ปรับขนาดรูปภาพตามความต้องการ
                      height: 700, // ปรับขนาดรูปภาพตามความต้องการ
                    ),
                    SizedBox(height: 20), // เพิ่มระยะห่างระหว่างรูปภาพกับปุ่ม
                    ElevatedButton(
                      onPressed: () {
                        // เชื่อมหน้าไปยังหน้าต่อไป
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyApp1()), // ใส่ Widget หน้าที่ต้องการเชื่อมไป
                        );
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
