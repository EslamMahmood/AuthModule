import 'package:flutter/material.dart';
import 'package:task/pages/forgetpassword.dart';
import 'package:task/pages/register_page.dart';
import 'package:task/pages/welcome_page.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
class LoginPage extends StatelessWidget {
  TextEditingController _emailController = TextEditingController();
  bool isValidEmail(String email ) {
    //String email='eslammahmood@gmail.com';
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Login Page',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Icon(Icons.person,size: 100,color: Colors.grey[700],),
          SizedBox(height: 10,),
          Text('Welcome back,Enter your credentials',style: TextStyle(color: Colors.grey[500]),),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
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
      Fluttertoast.showToast(msg: 'Login successfully');
      
    } else {
      Fluttertoast.showToast(msg: 'Invalid email or password');}
      Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WelcomePage()),
                );
              },
              child: Text('Login',style: TextStyle(color: Colors.grey[700],fontSize: 20,
                    fontWeight: FontWeight.bold,),
              ),  ),),
            SizedBox(height: 20),
            
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ForgotPasswordPage()),
                );
              },
              child: Text('Forgot Password?',style: TextStyle(color:Colors.grey[600],),),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
  
              child: Text('Register Now',style: TextStyle(color: Colors.grey[600],)),
              
            ),
          ],
        ),
      ),
     ), );
  }
}