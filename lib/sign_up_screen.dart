import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                onChanged: (val) {
                  print('MY input $val');
                },
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'email',
                  helperText: 'must be @gmail.com',
                  hintText: 'Write your mail here',
                ),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,

              ),
              TextButton(
                child: Text('Back'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
