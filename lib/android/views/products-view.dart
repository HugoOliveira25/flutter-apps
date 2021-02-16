import 'package:app_geladeira/android/controllers/home.controller.dart';
import 'package:app_geladeira/android/widgets/produtos/produto-item.widget.dart';
import 'package:flutter/material.dart';

class ProductsView extends StatefulWidget {
  @override
  _ProductsViewState createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  final controller = new HomeController();
  @override
  Widget build(BuildContext context) {
    var produtos = controller.lista;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Bebidas'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.60),
                    itemCount: produtos.length,
                    padding: EdgeInsets.all(8.0),
                    itemBuilder: (BuildContext context, int index) {
                      var produto = produtos[index];
                      return ProdutoItemWidget(
                        produto: produto,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
