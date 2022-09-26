import 'package:flutter/material.dart';
import '../../components/iconsLoginFaceGoogle.dart';
import '../../components/signInUpBotton.dart';
import '../dashboard.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _escondePass = true;

  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF2A0845),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
                color: Colors.white,
              ),
            ),
          ),
          Text(
            "Sign In",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 50.0),
            child: Container(
              width: 370,
              height: 610,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                Container(
                height: 220,
                width: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/undraw_Sign_in_re_o58h.png'),
                    fit: BoxFit.fill,
                  ),
                ),),
                  Padding(
                    padding: EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
                    child: TextField(
                      controller: emailController,
                      showCursor: true,
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: true,
                      enableInteractiveSelection: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                (30.0),
                              ),
                            ),
                          ),
                          filled: true,
                          prefixIcon: Icon(
                            Icons.alternate_email,
                            color: Color(0xFF2A0845),
                            size: 20.0,
                          ),
                          labelText: 'e-mail',
                          hintText: 'nome@email.com'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 15.0, right: 15.0),
                    child: TextField(
                      controller: senhaController,
                      showCursor: true,
                      autocorrect: false,
                      enableInteractiveSelection: false,
                      obscureText: _escondePass,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              (30.0),
                            ),
                          ),
                        ),
                        filled: true,
                        prefixIcon: const Icon(
                          Icons.lock_outline,
                          color: Color(0xFF2A0845),
                          size: 20.0,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _escondePass
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: _escondePass
                                ? Colors.grey.shade600
                                : const Color(0xFF2A0845),
                            size: 20.0,
                          ),
                          onPressed: () {
                            setState(
                                  () {
                                _escondePass = !_escondePass;
                              },
                            );
                          },
                        ),
                        labelText: 'Senha',
                        hintText: "********",
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 150.0,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Esqueceu a senha?",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SignIn_UpButtonWidget(
                    text: "SIGN IN",
                    widgetChild: () => _showPageHome(context),
                  ),
                  const FacebookGoogleLogin(),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Não possui conta? ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () => _showSignUP(context),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  void _showPageHome(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Dashboard()));
  }

  void _showSignUP(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignUp()));
  }
}

