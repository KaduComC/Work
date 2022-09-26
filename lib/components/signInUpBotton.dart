import 'package:flutter/material.dart';

class SignIn_UpButtonWidget extends StatelessWidget {
  const SignIn_UpButtonWidget(
      {Key? key, required this.text, required this.widgetChild})
      : super(key: key);
  final String text;
  final Function widgetChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: 350.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        gradient: LinearGradient(
            colors: [Color(0xFF2A0845), Color(0xFF6441A5)],
            begin: FractionalOffset(0.2, 0.2),
            end: FractionalOffset(1.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: MaterialButton(
        highlightColor: Colors.transparent,
        // splashColor: Colors.deepPurple,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        onPressed: () => widgetChild(),
      ),
    );
  }
}
