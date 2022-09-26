import 'package:flutter/material.dart';
import 'package:projeto_tcc/controller/categorieController.dart';

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  var categorieCont = CategoriesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: IconButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 60.0, top: 20),
                  child: Text(
                    'Categorias',
                    style: TextStyle(fontSize: 27, color: Colors.black),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                width: 370,
                height: 700,
                // color: Colors.black,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF2A0845),
                  // Color(0xFFE5E5E5)
                ),
                child: GridView.builder(
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                  itemCount: categorieCont.tabela.length,
                  itemBuilder: (BuildContext context, int i) {
                    final cate = categorieCont.tabela;
                    return _buildCategoriesPages(nome: cate[i].categoriaNome,
                      image: cate[i].image,
                      onClick: () {},
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// void _showFrutas(BuildContext context) {
//   Navigator.push(
//       context, MaterialPageRoute(builder: (context) => const Frutas()));
// }

class _buildCategoriesPages extends StatelessWidget {
  final String nome;
  final String image;
  final Function onClick;

  _buildCategoriesPages(
      {Key? key,
        required this.nome,
        required this.image,
        required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () => onClick(),
            child: Container(
              width: 160,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            nome,
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
