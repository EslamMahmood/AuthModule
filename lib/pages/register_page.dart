import 'package:flutter/material.dart';
import'package:task/pages/login_page.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task/pages/welcome_page.dart';
import 'package:task/core/validation.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  TextEditingController _firstController = TextEditingController();
  TextEditingController _lastController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  bool _passwordsMatch = true;

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
          Text('Enter valid credentials',style: TextStyle(color: Colors.grey[700],fontSize: 30,fontWeight: FontWeight.bold),),
          const SizedBox(height: 20,),
              TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ChatValidation().nameValidate,
              controller: _firstController,
              keyboardType: TextInputType.name,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: decoration.copyWith(
                labelText: 'Full Name',
                prefixIcon: const Icon(
                  Icons.person,
                ),
              ),
            ),
          
            const SizedBox(
              height: 10,
            ),
            //phone
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ChatValidation().phoneValidate,
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: decoration.copyWith(
                labelText: 'Phone',
                prefixIcon: const Icon(
                  Icons.phone,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //email
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator:ChatValidation().emailValidate,
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: decoration.copyWith(
                labelText:'Email',
                prefixIcon: const Icon(
                  Icons.mail,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //password
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: ChatValidation().passwordValidate,
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(
                color: Colors.black,
              ),
              obscureText: true,
              decoration: decoration.copyWith(
                labelText: 'Password',
                prefixIcon: const Icon(
                  Icons.key,
                ),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_sharp,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //confirm password
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
                labelText: 'Confirm Password',
                prefixIcon: const Icon(
                  Icons.key,
                ),
                suffixIcon: const Icon(
                  Icons.remove_red_eye_sharp,
                ),
              ),
            ),
              SizedBox(height: 40),
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
 
                  if (_passwordController.text == _confirmPasswordController.text ) {
                    setState(() {
                      _passwordsMatch = true;
                Fluttertoast.showToast(msg: 'Signed up successfully');
                    });
                          Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                  } else {
                    setState(() {
                      _passwordsMatch = false;
                      Fluttertoast.showToast(msg: 'Invalid credentials');
                    });
                  }
                },
                child: Text('Sign Up',style: TextStyle(color: Colors.white,fontSize: 20,
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

