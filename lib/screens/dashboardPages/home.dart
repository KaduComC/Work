import 'package:flutter/material.dart';

import '../../components/categorieComponent.dart';
import '../../components/popularComponent.dart';
import '../../controller/categorieController.dart';
import 'homePages/categoriesPage.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController textController = TextEditingController();
  late String _nomeUsuario = "Cadu";
  var categorieCont = CategoriesController();

  // final List<String> list = List.generate(10, (index) => "Text $index");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 40.0, left: 15.0),
            child: Row(
              children: [
                Text(
                  "Boas compras, ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    color: Color(0xFF2A0845),
                  ),
                ),
                Text(
                  '$_nomeUsuario!',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 30,
                    color: Color(0xFF2A0845),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 370,
            height: 140,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: 370,
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 15.0, bottom: 15.0, right: 150),
                  child: InkWell(
                    onTap: () => _showCategorias(context),
                    child: Wrap(
                      direction: Axis.horizontal,
                      children: <Widget>[
                        const Text(
                          "Categorias",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.black)
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child:
                      // ListView.builder(
                      //   itemCount: 2,
                      //   itemBuilder: (BuildContext context, int i) {
                      //     final cate = categorieCont.tabela;
                      //     return _CategoriaHome(
                      //       nome: cate[i].categoriaNome,
                      //       image: cate[i].image,
                      //       onClick: () {},
                      //     );
                      //   },
                      // )
                      Row(
                    children: <Widget>[
                      Wrap(
                        spacing: 10,
                        children: <Widget>[
                          CategoriaHome(
                              nome: categorieCont.tabela[0].categoriaNome,
                              image: categorieCont.tabela[0].image,
                              onClick: () {}),
                          CategoriaHome(
                              nome: categorieCont.tabela[1].categoriaNome,
                              image: categorieCont.tabela[1].image,
                              onClick: () {}),
                          CategoriaHome(
                              nome: categorieCont.tabela[2].categoriaNome,
                              image: categorieCont.tabela[2].image,
                              onClick: () {}),
                          CategoriaHome(
                              nome: categorieCont.tabela[3].categoriaNome,
                              image: categorieCont.tabela[3].image,
                              onClick: () {}),
                          CategoriaHome(
                              nome: categorieCont.tabela[4].categoriaNome,
                              image: categorieCont.tabela[4].image,
                              onClick: () {}),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              width: 370,
              height: 230,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 15.0, bottom: 15.0, right: 180),
                    child: InkWell(
                      onTap: () {},
                      child: Wrap(
                        direction: Axis.horizontal,
                        children: <Widget>[
                          const Text(
                            "Popular",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.arrow_forward_ios, color: Colors.black)
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Row(
                      children: <Widget>[
                        Wrap(
                          spacing: 10,
                          children: <Widget>[
                            Popular(),
                            Popular(),
                            Popular(),
                            Popular(),
                            Popular(),
                            Popular(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showCategorias(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const Categorias()));
  }
}

