import 'package:flutter/material.dart';

import '../../components/signInUpBotton.dart';
import 'SignIn.dart';
import 'SignUp.dart';

class SignUpIn extends StatefulWidget {
  const SignUpIn({Key? key}) : super(key: key);

  @override
  State<SignUpIn> createState() => _SignUpInState();
}

class _SignUpInState extends State<SignUpIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(top: 60.0),
            child: Text(
              "DeMarket",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 50,
                color: Color(0xFF2A0845),
              ),
            ),
          ),
          Container(
            height: 450,
            width: 900,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/undraw_empty_cart_co35.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(height: 25),
          SignIn_UpButtonWidget(
            text: "SIGN IN",
            widgetChild: () => _showPageIn(context),
          ),
          const SizedBox(height: 15),
          SignIn_UpButtonWidget(
            text: "SIGN UP",
            widgetChild: () => _showPageUp(context),
          ),
        ],
      ),
    );
  }

  void _showPageIn(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignIn()));
  }

  void _showPageUp(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignUp()));
  }
}
