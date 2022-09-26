import 'package:flutter/material.dart';

class ProdutosPageView extends StatefulWidget {
  const ProdutosPageView({Key? key}) : super(key: key);

  @override
  State<ProdutosPageView> createState() => _ProdutosPageViewState();
}

class _ProdutosPageViewState extends State<ProdutosPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Color(0xFFE5E5E5),
          elevation: 0,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              'Frutas',
              style: TextStyle(fontSize: 27, color: Colors.black),
            ),
          ),
        ),
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30)),
            color: Color(0xFF2A0845),
          ),
          child: Container(
            height: 695.0,
            width: 365.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              // mainAxisSpacing: 10,
              // crossAxisSpacing: 10,
              children: <Widget>[
                _buildCategoria(onClick: () {}),
                _buildCategoria(onClick: () {}),
                // _buildCategoria(onClick: () {}),
                // _buildCategoria(onClick: () {}),
              ],
            ),
          ),
        ),
    );
  }
}

class _buildCategoria extends StatelessWidget {
  const _buildCategoria({Key? key, required this.onClick}): super(key: key);
  final Function onClick;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: <Widget>[
          InkWell(
            onTap: () => onClick(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Nome',
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      );
  }
}
