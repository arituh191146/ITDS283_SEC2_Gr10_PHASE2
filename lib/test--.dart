import 'package:flutter/material.dart';

void main() {
  runApp(CarRentalAgreement());
}

class CarRentalAgreement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Car Rental Agreement'),
        ),
        body: Container(
          color: Colors.white, // เปลี่ยนสีพื้นหลังเป็นสีฟ้า
          padding: EdgeInsets.all(16.0), // เพิ่มระยะห่างของขอบซ้ายขวาบนล่าง
          child: CarRentalForm(),
        ),
      ),
    );
  }
}

class CarRentalForm extends StatefulWidget {
  @override
  _CarRentalFormState createState() => _CarRentalFormState();
}

class _CarRentalFormState extends State<CarRentalForm> {
  bool _isOver20 = false;
  bool _hasValidDocuments = false;
  bool _isWithinOperatingHours = false;
  bool _isReturningToSameBranch = true;
  bool _isRefillingFuel = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          'ข้อมูลของผู้เช่า',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        CheckboxListTile(
          title: Text('ผู้เช่ามีอายุ 20 ปี บริบูรณ์'),
          value: _isOver20,
          onChanged: (value) {
            setState(() {
              _isOver20 = value!;
            });
          },
        ),
        CheckboxListTile(
          title: Text('มีเอกสารตัวจริงทั้ง 3 รายการได้เเก่ 1.บัตรประชาชน 2.ใบขับขี่รถยนต์ 3.บัตรเครดิตหรือสลิปเงินเดือน'),
          value: _hasValidDocuments,
          onChanged: (value) {
            setState(() {
              _hasValidDocuments = value!;
            });
          },
        ),
        SizedBox(height: 20),
        Text(
          'เวลาทำการ',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        CheckboxListTile(
          title: Text('รับ/คืนรถยนต์ในเวลาทำการ'),
          value: _isWithinOperatingHours,
          onChanged: (value) {
            setState(() {
              _isWithinOperatingHours = value!;
            });
          },
        ),
        SizedBox(height: 20),
        Text(
          'สถานที่รับ/คืนรถยนต์',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        CheckboxListTile(
          title: Text('คืนรถยนต์ที่สาขาเดิม'),
          value: _isReturningToSameBranch,
          onChanged: (value) {
            setState(() {
              _isReturningToSameBranch = value!;
            });
          },
        ),
        SizedBox(height: 20),
        Text(
          'น้ำมันเชื้อเพลิง',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        CheckboxListTile(
          title: Text('เติมน้ำมันรถยนต์เต็มถัง'),
          value: _isRefillingFuel,
          onChanged: (value) {
            setState(() {
              _isRefillingFuel = value!;
            });
          },
        ),
        SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: () {
              // รับค่าและดำเนินการต่อไป
            },
            child: Text('Next'),
          ),
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
