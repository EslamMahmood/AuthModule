import 'package:flutter/material.dart';
import 'package:task/pages/login_page.dart';

class NewPasswordPage extends StatefulWidget {
  @override
  _NewPasswordPageState createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  TextEditingController _newPasswordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  bool _passwordsMatch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Editing Password',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.password_rounded,size: 100,color: Colors.grey[700],),
            SizedBox(height: 70,),
            TextField(
              controller: _newPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter New Password',
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirm New Password',
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
                if (_newPasswordController.text == _confirmPasswordController.text) {
                  setState(() {
                    _passwordsMatch = true;
                  });
                  // Perform password update logic
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                } else {
                  setState(() {
                    _passwordsMatch = false;
                  });
                }
              },
              child: Text('Confirm',style: TextStyle(color: Colors.grey[700],fontSize: 15,
                    fontWeight: FontWeight.bold,),),
            ),)
          ],
        ),
      ),),
    );
  }
}


