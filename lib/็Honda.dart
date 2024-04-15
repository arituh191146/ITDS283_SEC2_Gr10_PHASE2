import 'package:flutter/material.dart';
import 'Carrental-agreement1.dart';

void main() {
  runApp(MyForm());
}

class MyForm extends StatefulWidget {
  @override
  MyFormState createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ลบปุ่ม debug มุมขวาบน
      home: Scaffold(
        appBar: AppBar(
          title: Text(''),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue, Colors.lightBlueAccent],
            ),
          ),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/Honda-Civic-PNG-Photo.png', // ตั้งค่า path ของรูปรถ
                          height: 100, // ปรับขนาดรูปรถตามต้องการ
                          width: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Honda',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        initialValue: 'Honda Civic 2019 (FC)',
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Car',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        initialValue: '\$1250/Day',
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: 'Price per Day',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Last Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your last name';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'ID card number',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your ID card number';
                          }
                          return null;
                        },
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 20, bottom: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Date to borrow',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the date to borrow';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: 'Date to return',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the date to return';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        obscureText: true, // เพิ่มคำสั่งสำหรับซ่อน password
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton( // เพิ่ม ElevatedButton เป็นปุ่ม Submit
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp8()), // ใส่ Widget หน้าที่ต้องการเชื่อมไป
                      );
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: Text('Submit'),
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
