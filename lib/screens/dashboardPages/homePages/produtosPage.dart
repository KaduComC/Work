import 'package:flutter/material.dart';
import 'package:projeto_tcc/components/my_flutter_app_icons.dart';

import '../../../controller/categorieController.dart';

class ProdutosPageView extends StatefulWidget {
  const ProdutosPageView({Key? key}) : super(key: key);

  @override
  State<ProdutosPageView> createState() => _ProdutosPageViewState();
}

class _ProdutosPageViewState extends State<ProdutosPageView> {
  var categorieCont2 = CategoriesController();

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
              'Nome',
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
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
        ),
        child: ListView.builder(
          itemCount: categorieCont2.tabela.length,
              itemBuilder: (BuildContext context, int i) {
                final prod = categorieCont2.tabela;
                return _buildProduto(
                  nome: prod[i].categoriaNome,
                  image: prod[i].image,
                  preco: prod[i].valor,
                  onClick: () {},
                );
              },
        ),
      ),

      // _buildProduto(
      //     onClick: () {},
      //     image: categorieCont2.tabela[0].image,
      //     preco: categorieCont2.tabela[0].valor,
      //     nome: categorieCont2.tabela[0].categoriaNome),

      // Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //       topRight: Radius.circular(25),
      //       topLeft: Radius.circular(25),
      //     ),
      //     color: Color(0xFFE5E5E5),
      //   ),
      //   child: GridView.builder(
      //     gridDelegate:
      //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //     itemCount: categorieCont2.tabela.length,
      //     itemBuilder: (BuildContext context, int i) {
      //       final prod = categorieCont2.tabela;
      //       return _buildProduto(
      //         nome: prod[i].categoriaNome,
      //         image: prod[i].image,
      //         onClick: () {},
      //       );
      //     },
      //   ),
      // ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF2A0845),
        child: Icon(MyFlutterApp.sliders),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class _buildProduto extends StatelessWidget {
  final String nome;
  final String image;
  final double preco;
  final Function onClick;

  _buildProduto(
      {Key? key,
      required this.nome,
      required this.image,
      required this.preco,
      required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 250,
      width: 170,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey, width: 1),
          color: Colors.white),
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () => onClick(),
            child: Container(
              width: 130,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      nome,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'R\$$preco',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ],
              ),
              Spacer(
                flex: 1,
              ),
              Container(
                height: 45.0,
                width: 45.0,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
