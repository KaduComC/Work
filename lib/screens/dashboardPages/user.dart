import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  final String _nomeUsuario = "Cadu";
  final String _userImage = 'assets/images/avatar.png';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            height: 190,
            width: double.infinity,
            // decoration: BoxDecoration(
            //   color: Colors.black,
            // ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  // backgroundColor: Color(0xFF2A0845),
                  backgroundImage: AssetImage('$_userImage'),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 80.0, left: 80),
                    child: FloatingActionButton.small(
                      onPressed: () {},
                      backgroundColor: Color(0xFF2A0845),
                      child: Icon(Icons.add),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  '$_nomeUsuario',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    color: Color(0xFF2A0845),
                  ),
                ),
              ],
            ),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Container(
            // color: Colors.black,
            height: 553,
            width: 370,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 360,
                        // color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('data'),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        gradient: RadialGradient(
                          colors: [
                            Colors.black12,
                            Colors.black54,
                          ],
                        ),
                      ),
                      width: 340.0,
                      height: 2.0,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        width: 360,
                        // color: Colors.black,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('data'),
                            Icon(Icons.arrow_forward_ios)
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.black54,
                        gradient: RadialGradient(
                          colors: [
                            Colors.black12,
                            Colors.black54,
                          ],
                        ),
                      ),
                      width: 340.0,
                      height: 2.0,
                    ),
                    // Card(child: Row(children: <Widget>[Text('Teste'), Icon(Icons.arrow_forward_ios)]),)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

// void _showTeste(BuildContext context) {
//   Navigator.push(
//       context, MaterialPageRoute(builder: (context) => const Teste()));
// }
}
