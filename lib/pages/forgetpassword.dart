import 'package:flutter/material.dart';
import 'package:task/pages/verification_page.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:task/core/validation.dart';
class ForgotPasswordPage extends StatelessWidget {
  
   TextEditingController emailController =TextEditingController();
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
            SizedBox(height: 70),
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
                Fluttertoast.showToast(msg:"Valid Email");
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> VerificationPage()));
              },

              child: Text('Check Out',style: TextStyle(color: Colors.white,fontSize: 15,
                    fontWeight: FontWeight.bold,),
            ),
        ),)],
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
