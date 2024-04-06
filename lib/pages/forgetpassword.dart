import 'package:flutter/material.dart';
import 'package:task/pages/confirmation.dart';
import 'package:task/pages/verification_page.dart';
class ForgotPasswordPage extends StatelessWidget {
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
              ),
            ),
            SizedBox(height: 70),
            Container(
              height: 50,
              width: 200,
              child:
            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => VerificationPage()),);
              },
              child: Text('Check Out',style: TextStyle(color: Colors.grey[700],fontSize: 15,
                    fontWeight: FontWeight.bold,),
            ),
        ),)],
        ),
      ),),
    );
  }
}