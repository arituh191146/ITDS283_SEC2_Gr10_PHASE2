import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MasterCard',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MasterCard'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.lightBlueAccent],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Image.asset(
                          'assets/mastercard_logo.png', // ตั้งค่า path ของรูปรถ
                          height: 300, // ปรับขนาดรูปรถตามต้องการ
                          width: 300,
                        ),
                  // Image.asset('assets/mastercard2.png'),
                  // height: 100, // ปรับขนาดรูปรถตามต้องการ
                  //         width: 100,
                   // Replace with your MasterCard logo image
                  SizedBox(height: 32),
                  MasterCardForm(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MasterCardForm extends StatefulWidget {
  @override
  _MasterCardFormState createState() => _MasterCardFormState();
}

class _MasterCardFormState extends State<MasterCardForm> {
  final _formKey = GlobalKey<FormState>();
  String? cardholderName;
  String? creditCardNumber;
  String? creditCardExpirationDate;
  String? cvv;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Cardholder Name'),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter some text';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                cardholderName = value;
              });
            },
          ),
          SizedBox(height: 16),
          TextFormField(
            decoration: InputDecoration(labelText: 'Credit Card Number'),
            validator: (value) {
              if (value?.isEmpty ?? true) {
                return 'Please enter some text';
              }
              return null;
            },
            onChanged: (value) {
              setState(() {
                creditCardNumber = value;
              });
            },
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Credit Card Expiration Date'),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      creditCardExpirationDate = value;
                    });
                  },
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'CVV'),
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    setState(() {
                      cvv = value;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState?.validate() ?? false) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}
