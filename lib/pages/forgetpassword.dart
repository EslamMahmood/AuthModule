import 'package:flutter/material.dart';
import 'package:task/pages/verification_page.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ForgotPasswordPage extends StatelessWidget {
  
   TextEditingController _emailController = TextEditingController();
  bool isEmailValid =false;
  bool isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Check Out Email',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.abc_rounded,size: 100,color: Colors.grey[700],),
            SizedBox(height: 30,),
            TextField(
              
              decoration: InputDecoration(
                hintText: 'Enter your email',
                errorText: isEmailValid ? null : "Required valid please",
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
    if (isValidEmail(email)&&isEmailValid) {
      // Set isEmailValid to true if the email is valid
      isEmailValid = true;
      // Perform sign up logic here
      Fluttertoast.showToast(msg: 'Invalid email');
     
    
    } else {
      // Set isEmailValid to false if the email is invalid
      isEmailValid = true;
      Fluttertoast.showToast(msg: 'Access successfully');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VerificationPage()),);
    }

    // Check if the email is valid before navigating
    
  },


    // Check if the email is valid before navigating
    
  

              child: Text('Check Out',style: TextStyle(color: Colors.grey[700],fontSize: 15,
                    fontWeight: FontWeight.bold,),
            ),
        ),)],
        ),
      ),),
    );
  }
}