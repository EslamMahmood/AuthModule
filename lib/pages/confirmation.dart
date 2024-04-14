import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task/pages/login_page.dart';
import 'package:task/core/validation.dart';
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
             TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: ChatValidation().passwordValidate,
            controller: _newPasswordController,
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(
              color: Colors.black,
            ),
            obscureText: true,
            decoration: decoration.copyWith(
              labelText: 'Enter New Password',
              prefixIcon: const Icon(
                Icons.key,
              ),
              suffixIcon: const Icon(
                Icons.remove_red_eye_sharp,
              ),
            ),
          ),
            SizedBox(height: 40,),
            TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: ChatValidation().passwordValidate,
            controller: _confirmPasswordController,
            keyboardType: TextInputType.visiblePassword,
            style: const TextStyle(
              color: Colors.black,
            ),
            obscureText: true,
            decoration: decoration.copyWith(
              labelText: 'Confirm New Password',
              prefixIcon: const Icon(
                Icons.key,
              ),
              suffixIcon: const Icon(
                Icons.remove_red_eye_sharp,
              ),
            ),
          ),
            const SizedBox(height: 50),
            Container(
            height: 50,
            width: 200,
            child: 
          MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0))
              ),
              color: Colors.grey,
              minWidth: double.infinity,
              elevation: 5,
              onPressed: () {
                
                if (_newPasswordController.text == _confirmPasswordController.text ) {
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
                    Fluttertoast.showToast(msg: "Passwords don't match");
                  });
                }
              },
              child: Text('Confirm',style: TextStyle(color: Colors.white,fontSize: 15,
                    fontWeight: FontWeight.bold,),),
            ),)
          ],
        ),
      ),),
    );
  }
  InputDecoration decoration = const InputDecoration(
    labelStyle: TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey,
        width: 1,
      ),
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
        width: 1,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(20),
      ),
    ),
  );
}




