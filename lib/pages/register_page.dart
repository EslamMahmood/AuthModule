import 'package:flutter/material.dart';
import'package:task/pages/login_page.dart';
class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _passwordsMatch = true;
final String email='eslammahmood@gmail.com';
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

                  if (_passwordController.text == _confirmPasswordController.text) {
                    setState(() {
                      _passwordsMatch = true;
                    });
                    
                  } else {
                    setState(() {
                      _passwordsMatch = false;
                    });
                  }
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),);
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

