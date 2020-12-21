import 'package:app_geladeira/android/controllers/home.controller.dart';
import 'package:app_geladeira/android/stores/app.store.dart';
import 'package:app_geladeira/android/widgets/produtos/produto-item.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 85),
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                child: GridView.builder(
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 0.65),
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
