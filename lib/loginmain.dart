import 'package:flutter/material.dart';
import 'selectbrandcar.dart';

void main() {
  runApp(MyApp12());
}

class MyApp12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // บรรทัดนี้จะปิด DEBUG มุมซ้ายบน
      title: 'Car Rent ICT Mahidol',
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromRGBO(0, 11, 50, 1.0),
          centerTitle: true,
        ),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  @override
Widget build(BuildContext context) {
  return Scaffold(
appBar: AppBar(
  bottom: PreferredSize(
    preferredSize: Size.fromHeight(60.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(width: 45),
            Text(
              'CAR',
              style: TextStyle(fontSize: 30, color: Colors.white), // ลดขนาดตัวอักษร
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 45),
            Text(
              'RENT',
              style: TextStyle(fontSize: 30, color: Colors.white), // ลดขนาดตัวอักษร
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 45),
            Text(
              'ICT Mahidol',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
      ],
    ),
  ),
),


    
      backgroundColor: Color.fromRGBO(0, 11, 50, 1.0),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              SizedBox(height: 32),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    decoration: BoxDecoration(
  color: Color.fromRGBO(255, 255, 255, 1),
  borderRadius: BorderRadius.only(
    topLeft: Radius.circular(50),
    topRight: Radius.circular(50),
  ),
),

                    child: Column(
                      children: [
                        SizedBox(height: 16),
                        Container(
                          padding: EdgeInsets.all(8),
      
                        child: Text(
                          'LOG-IN',
                        style: TextStyle(fontSize: 47, color: Colors.black),
                        ),
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          controller: _usernameController,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            prefixIcon: Icon(
                              Icons.person,
                              color: const Color.fromARGB(255, 5, 34, 85),
                              ),
                  
                          ),
                        ),
                        SizedBox(height: 16),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _obscureText,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(
                              Icons.lock,
                              color: const Color.fromARGB(255, 5, 34, 85),
                              ),
                            suffixIcon: IconButton(
                              icon: Icon(_obscureText ? Icons.visibility_off : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _obscureText = !_obscureText;
                                });
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.black, fontSize: 11),
                            ),
                          ],
                        ),
                        SizedBox(height: 24),
                        
                        ElevatedButton(
                          onPressed: () {
                            // Handle login logic here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 5, 34, 85),
                            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        SizedBox(height: 16),
                        Text(
                          'Don\'t have an account?',
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 8),
                        TextButton(
                          onPressed: () {
                                Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectBrandCar()), // ใส่ Widget หน้าที่ต้องการเชื่อมไป
                      );
                            // Handle sign-up logic here
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Text(
                            'Sign up now',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(255, 5, 34, 85),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//1