import 'package:flutter/material.dart';
import 'selectbrandcar.dart';
void main() {
  runApp(MyApp10());
}

class MyApp10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // ลบปุ่ม debug มุมขวาบน
      title: 'Car Rent ICT Mahidol',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
      ),
      home: MyHomePage(),
    );
  }
}



class LoginMain extends StatelessWidget {
  const LoginMain({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        
        title: Text('Login Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginMain()),
    );
          },
          child: Text('Go to Select Brand Car'),
        ),
      ),
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
        title: Text('CAR RENT ICT MAHIDOL'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 32),
            Text(
              'LOG-IN',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'Please sign in to continue.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 63, 145, 193),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      SizedBox(height: 16),
                      Container(
                        padding: EdgeInsets.all(8), // Add padding
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, // Shape as circle
                          color: Colors.white, // Background color
                        ),
                        child: Image.asset(
                          'assets/carlogin.png', // ตำแหน่งของรูปภาพในโฟลเดอร์ assets
                          height: 120, // Increase image height
                          width: 120, // Increase image width
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _usernameController,
                        decoration: InputDecoration(
                          labelText: 'Username',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Forgot Password?',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 24), // Added a spacer here
                      ElevatedButton(
                        onPressed: () {
                          // Handle login logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 12),
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
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
