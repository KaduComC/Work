import 'package:flutter/material.dart';
import 'package:masked_text_field/masked_text_field.dart';
import 'package:intl/intl.dart';

import '../../components/signInUpBotton.dart';
import '../dashboard.dart';
import 'SignIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _escondePass = true;

  TextEditingController nomeController = TextEditingController();
  TextEditingController apelidoController = TextEditingController();
  TextEditingController nascimentoController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController telefoneController = TextEditingController();
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
            "Sign Up",
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
                children:
                <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 15.0, right: 15.0),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: TextField(
                            controller: nomeController,
                            showCursor: true,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    (30.0),
                                  ),
                                ),
                              ),
                              filled: true,
                              labelText: 'Nome',
                              // hintText: "Nome",
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          flex: 1,
                          child: TextField(
                            controller: apelidoController,
                            showCursor: true,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    (30.0),
                                  ),
                                ),
                              ),
                              filled: true,
                              labelText: 'Apelido',
                              // hintText: "Apelido",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 5.0, left: 15.0, right: 15.0),
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: TextField(
                            readOnly: true,
                            showCursor: false,
                            autocorrect: false,
                            enableInteractiveSelection: false,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.calendar_month_outlined,
                                    color: Color(0xFF2A0845)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      (30.0),
                                    ),
                                  ),
                                ),
                                filled: true,
                                hintText: "Data de nacimento"),
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                                builder: (context, child) {
                                  return Theme(
                                    data: Theme.of(context).copyWith(
                                      colorScheme: ColorScheme.light(
                                        primary: Color(0xFF2A0845),
                                        // header background color
                                        onPrimary: Colors.white,
                                        // header text color
                                        onSurface:
                                            Colors.black, // body text color
                                      ),
                                    ),
                                    child: child!,
                                  );
                                },
                              );

                              if (pickedDate != null) {
                                print(pickedDate);
                                String dateFormat =
                                    DateFormat('dd-MM-yyyy').format(pickedDate);
                                print(dateFormat);

                                // setState(() {
                                //   dateinput.text = dateFormat;
                                // });
                              } else {
                                print('Data não selecionada');
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Flexible(
                          flex: 1,
                          child: MaskedTextField(
                            inputDecoration: InputDecoration(
                              hintText: '000.000.000-00',
                              labelText: 'CPF',
                              counterText: '',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(30.0),
                                ),
                              ),
                              filled: true,
                            ),
                            autofocus: false,
                            mask: 'xxx.xxx.xxx-xx',
                            maxLength: 14,
                            keyboardType: TextInputType.number,
                            textFieldController: cpfController,
                            onChange: (value) => (value),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
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
                    padding: EdgeInsets.only(top: 5.0, left: 15.0, right: 15.0),
                    child: MaskedTextField(
                      inputDecoration: InputDecoration(
                        hintText: '(DDD) 00000-0000',
                        labelText: 'Número de telefone',
                        counterText: '',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.all(
                            Radius.circular(30.0),
                          ),
                        ),
                        filled: true,
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color(0xFF2A0845),
                          size: 20.0,
                        ),
                      ),
                      autofocus: false,
                      mask: '(xx) xxxxx-xxxx',
                      maxLength: 15,
                      keyboardType: TextInputType.number,
                      textFieldController: telefoneController,
                      onChange: (value) => (value),
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
                    height: 60,
                  ),
                  SignIn_UpButtonWidget(
                    text: "SIGN UP",
                    widgetChild: () => _showPageHome(context),
                  ),
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
                  "Já possui conta? ",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                InkWell(
                  onTap: () => _showSignIN(context),
                  child: const Text(
                    "SIGN IN",
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

  void _showSignIN(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SignIn()));
  }
}
