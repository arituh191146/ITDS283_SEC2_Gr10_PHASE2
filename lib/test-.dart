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
        body: RentalForm(),
      ),
    );
  }
}

class RentalForm extends StatefulWidget {
  @override
  _RentalFormState createState() => _RentalFormState();
}

class _RentalFormState extends State<RentalForm> {
  TextEditingController ageController = TextEditingController();
  TextEditingController idController = TextEditingController();
  TextEditingController licenseController = TextEditingController();
  TextEditingController creditCardController = TextEditingController();
  bool hasExpiredDocuments = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Renter Information',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: ageController,
            decoration: InputDecoration(labelText: 'Age'),
            keyboardType: TextInputType.number,
          ),
          TextField(
            controller: idController,
            decoration: InputDecoration(labelText: 'ID Card'),
          ),
          TextField(
            controller: licenseController,
            decoration: InputDecoration(labelText: 'Driver License'),
          ),
          TextField(
            controller: creditCardController,
            decoration: InputDecoration(labelText: 'Credit Card / Payslip'),
          ),
          CheckboxListTile(
            title: Text('Documents expired?'),
            value: hasExpiredDocuments,
            onChanged: (value) {
              setState(() {
                hasExpiredDocuments = value!;
              });
            },
          ),
          ElevatedButton(
            onPressed: () {
              // Validate and process renter information
              validateAndProcessRenterInfo();
              // Navigate to next page
              // Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }

  void validateAndProcessRenterInfo() {
    // Perform validation of renter information
    int age = int.tryParse(ageController.text) ?? 0;
    if (age < 20) {
      showAlertDialog(context, 'Invalid Age', 'Renter must be at least 20 years old.');
      return;
    }

    // Validate document expiration
    if (hasExpiredDocuments) {
      showAlertDialog(context, 'Expired Documents', 'One or more documents have expired.');
      return;
    }

    // Other validation and processing logic can be added here
  }

  void showAlertDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
