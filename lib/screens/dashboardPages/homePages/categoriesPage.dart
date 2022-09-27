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
      backgroundColor: Color(0xFF2A0845),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Color(0xFF2A0845),
          // Color(0xFFE5E5E5),
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Categorias',
              style: TextStyle(
                fontSize: 27,
                color: Colors.white,
              ),
            ),
          ),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 10.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_basket_outlined,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(25), topLeft: Radius.circular(25)),
            color: Color(0xFFE5E5E5),
          ),
          child: Container(
            height: 695.0,
            width: 365.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemCount: categorieCont.tabela.length,
              itemBuilder: (BuildContext context, int i) {
                final cate = categorieCont.tabela;
                return _buildCategoriesPages(
                  nome: cate[i].categoriaNome,
                  image: cate[i].image,
                  onClick: () {},
                );
              },
            ),
          ),
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
      padding: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () => onClick(),
            child: Container(
              width: 158,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            nome,
            style: TextStyle(color: Colors.black, fontSize: 15),
          )
        ],
      ),
    );
  }
}
