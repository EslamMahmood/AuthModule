import 'package:flutter/material.dart';
import 'package:task/pages/forgetpassword.dart';
import 'package:task/pages/register_page.dart';
import 'package:task/pages/welcome_page.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task/core/validation.dart';
class LoginPage extends StatelessWidget {
  TextEditingController emailController =TextEditingController();
  TextEditingController passwordController =TextEditingController();
  
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
          const SizedBox(height: 10,),
          Text('Welcome back,Enter your credentials',style: TextStyle(color: Colors.grey[500]),),
          const SizedBox(height: 30,),
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
                validator:ChatValidation().emailValidate,
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: decoration.copyWith(
                  labelText:'Email',
                  prefixIcon: const Icon(
                    Icons.mail,
                  ),
                ),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
        
            
            SizedBox(height: 40,),
            TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: ChatValidation().passwordValidate,
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: decoration.copyWith(
                  labelText:'Password',
                  prefixIcon: const Icon(
                    Icons.key,
                  ),
                  suffixIcon:const Icon(
                    Icons.remove_red_eye_sharp,
                  ) ,
                ),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            SizedBox(height: 50),
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
                  onPressed: (){
                    Fluttertoast.showToast(msg:"Login successfully");
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> WelcomePage()));
                  },
              child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 20,
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
InputDecoration decoration = const InputDecoration(
    labelStyle: TextStyle(
      color: Colors.grey,
    ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.grey,
          width: 3,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(20),
        ),
      ),
      );

}