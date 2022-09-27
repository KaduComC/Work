import 'package:flutter/material.dart';

class CategoriaHome extends StatelessWidget {
  final String nome;
  final String image;
  final Function onClick;

  CategoriaHome(
      {Key? key,
        required this.nome,
        required this.image,
        required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        InkWell(
          onTap: () => onClick(),
          child: Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          nome,
          style: TextStyle(color: Colors.black, fontSize: 15),
        )
      ],
    );
  }
}
