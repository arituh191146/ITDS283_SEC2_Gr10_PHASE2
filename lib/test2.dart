import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Terms & Conditions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TermsAndConditionsScreen(),
    );
  }
}

class TermsAndConditionsScreen extends StatefulWidget {
  @override
  _TermsAndConditionsScreenState createState() =>
      _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  int _currentPageIndex = 0;
  List<String> _pages = [
    "ข้อตกลงและเงื่อนไข หน้าที่ 1\n"
    "1. คุณสมบัติของผู้เช่า\n"
    "   1.1 ผู้เช่าต้องมีอายุ 20 ปี ขึ้นไป และในวันที่เช่ารถยนต์ ผู้เช่าต้องนำเอกสารตัวจริงมาด้วย ดังนี้\n"
    "       - บัตรประชาชน\n"
    "       - ใบขับขี่รถยนต์\n"
    "       - บัตรเครดิต หรือ สลิปเงินเดือน\n"
    "   1.2 โดยเอกสารทั้ง 3 รายการต้องไม่หมดอายุ\n"
    "2. เวลาทำการ\n"
    "   - บริษัทเปิดให้บริการทุกวัน 08.00-20.00 น. ผู้เช่าต้องรับรถยนต์และคืนรถยนต์ในเวลาทำการ กรณีรับรถยนต์หรือคืนรถยนต์นอกเวลาทำการ มีค่าบริการเพิ่ม ดังนี้\n"
    "   - 2.1 กรณีรับรถยนต์หรือคืนรถยนต์ เวลา 20.00-22.00 น. มีค่าบริการเพิ่ม 535 บาท/ครั้ง\n"
    "   - 2.2 กรณีรับรถยนต์หรือคืนรถยนต์ เวลา 22.00-06.00 น. มีค่าบริการเพิ่ม 1,070 บาท/ครั้ง\n"
    "   - 2.3 กรณีรับรถยนต์หรือคืนรถยนต์ เวลา 06.00-08.00 น. มีค่าบริการเพิ่ม 535 บาท/ครั้ง\n"
    "3. สถานที่รับรถยนต์\n"
    "   - ผู้เช่าต้องมารับรถยนต์ที่สำนักงานสาขาของบริษัท หากต้องการรับรถยนต์นอกสถานที่จะมีค่าใช้จ่ายเพิ่มในเขตกรุงเทพมหานคร 535 บาท/เที่ยว สำหรับจังหวัดอื่น สอบถามราคาได้ที่พนักงานขายของบริษัท\n"
    "4. สถานที่คืนรถยนต์\n"
    "   - ผู้เช่าต้องนำรถยนต์มาคืนที่สำนักงานสาขาเดิม หากคืนรถยนต์ต่างสาขาหรือ สถานที่อื่น มีค่าบริการเพิ่ม สอบถามราคาได้ที่พนักงานขายของบริษัท\n"
    "5. น้ำมันเชื้อเพลิง\n"
    "   - บริษัทจะเติมน้ำมันรถยนต์ให้เต็มถังก่อนส่งมอบรถยนต์ให้ผู้เช่า ณ วันที่คืนรถยนต์ ต้องเติมน้ำมันคืนเต็มถัง หากไม่เติมน้ำมันเต็มถัง มีค่าปรับ ดังนี้\n"
    "   - 5.1 รถยนต์ 1,200 cc มีค่าปรับ 214 บาท/ขีด\n"
    "   - 5.2 รถยนต์ 1,500 cc มีค่าปรับ 268 บาท/ขีด\n"
    "   - 5.3 รถยนต์ 1,600-1,800 cc มีค่าปรับ 321 บาท/ขีด\n"
    "   - 5.4 รถยนต์ 2,000 cc และ รถกระบะ / SUV /รถตู้ มีค่าปรับ 535 บาท/ขีด\n"
    "   - 5.5 รถยนต์ Benz/BMW มีค่าปรับ 856 บาท/ขีด\n"
    "6. การนับวันในการเช่ารถยนต์\n"
    "   - การเช่ารถยนต์แบบขับเอง 1 วัน จะนับเวลาเช่าเท่ากับ 24 ชั่วโมง ผู้เช่ารับรถยนต์เวลาไหนก็ให้นับอีก 24 ชั่วโมง ถือเป็นการเช่ารถยนต์ 1 วัน หากคืนรถยนต์ล่าช้าจะมีค่าปรับคืนรถล่าช้าคิดเป็นรายชั่วโมง และหากคืนรถยนต์ล่าช้าเกิน 4 ชั่วโมง ถือเป็นการเช่ารถยนต์เพิ่ม\n",
    "7. ข้อตกลงและเงื่อนไข หน้าที่ 2",
    "8. ข้อตกลงและเงื่อนไข หน้าที่ 3",
    // เพิ่มหน้าต่อไปตามต้องการ
  ];

  void _nextPage() {
    setState(() {
      if (_currentPageIndex < _pages.length - 1) {
        _currentPageIndex++;
      } else {
        // ถ้าอ่านหน้าสุดท้ายแล้ว สามารถทำอะไรก็ได้ เช่น ปิดหน้าต่าง หรือโชว์ข้อความขอบคุณ
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('ข้อตกลงและเงื่อนไข'),
              content: Text('ขอบคุณที่อ่านข้อตกลงและเงื่อนไขของเรา'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('ปิด'),
                ),
              ],
            );
          },
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ข้อตกลงและเงื่อนไข'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue, Colors.lightBlueAccent],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    _pages[_currentPageIndex],
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _nextPage,
                  child: Text(_currentPageIndex < _pages.length - 1
                      ? 'Next'
                      : 'เสร็จสิ้น'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
