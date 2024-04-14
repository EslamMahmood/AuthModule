import 'package:flutter/material.dart';
import 'package:task/pages/confirmation.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  TextEditingController _codeController1 = TextEditingController();
  TextEditingController _codeController2 = TextEditingController();
  TextEditingController _codeController3 = TextEditingController();
  TextEditingController _codeController4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Verification Email',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.verified_sharp,size: 100,color: Colors.grey[700],),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  width: 50,
                  child: TextField(
                    controller: _codeController1,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '*',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextField(
                    controller: _codeController2,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '*',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextField(
                    controller: _codeController3,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '*',
                    ),
                  ),
                ),
                SizedBox(
                  width: 50,
                  child: TextField(
                    controller: _codeController4,
                    maxLength: 1,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: '*',
                    ),
                  ),
                ),
              ],
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
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> NewPasswordPage()));
                    },
              child: Text('Verify',style: TextStyle(color: Colors.white,fontSize: 15,
                    fontWeight: FontWeight.bold,),
              
            ),
        ),),],
        ),
      ),
    );
  }
}

