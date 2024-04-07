import 'package:flutter/material.dart';
import'package:task/pages/login_page.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task/pages/welcome_page.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _passwordsMatch = true;

bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Register Page',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Icon(Icons.lock,size: 100,color: Colors.grey[700],),
          SizedBox(height: 10,),
          Text('Enter valid credentials',style: TextStyle(color: Colors.grey[500]),),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  errorText: _passwordsMatch ? null : "Passwords don't match ,try again!",
                ),
              ),
              SizedBox(height: 70),
              Container(
            height: 50,
            width: 200,
            child: 
              ElevatedButton(
                onPressed: () {
 String email = _emailController.text.trim();
    if (isValidEmail(email)) {
      // Perform sign up logic here
      Fluttertoast.showToast(msg: 'Signed up successfully');
    } else {
      Fluttertoast.showToast(msg: 'Invalid email');}
                  if (_passwordController.text == _confirmPasswordController.text && isValidEmail(email)) {
                    setState(() {
                      _passwordsMatch = true;
                
                    });
                          Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                  } else {
                    setState(() {
                      _passwordsMatch = false;
                    });
                  }
                },
                child: Text('Sign Up',style: TextStyle(color: Colors.grey[700],fontSize: 20,
                    fontWeight: FontWeight.bold,),),
              ),),
              SizedBox(height: 20),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Already have an acount!',style: TextStyle(color: Colors.grey[600],)),
            ),
            ],
          ),
        ),
      ),
    );
  }
}

