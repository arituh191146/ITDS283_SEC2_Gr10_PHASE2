import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'White Box with Button',
      home: WhiteBoxPage(),
    );
  }
}

class WhiteBoxPage extends StatefulWidget {
  @override
  _WhiteBoxPageState createState() => _WhiteBoxPageState();
}

class _WhiteBoxPageState extends State<WhiteBoxPage> {
  TextEditingController _textEditingController = TextEditingController();
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('White Box with Button'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.white,
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  controller: _textEditingController,
                  maxLines: null, // Allow multiline input
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter your text here...',
                  ),
                  onChanged: (text) {
                    setState(() {
                      _inputText = text;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Do something with the input text
                print('Input text: $_inputText');
                // Clear the text field
                _textEditingController.clear();
                setState(() {
                  _inputText = '';
                });
              },
              child: Text('Next'),
            ),
          ],
        ),
      ),
    );
  }
}
