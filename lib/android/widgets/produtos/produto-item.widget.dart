import 'package:app_geladeira/android/controllers/home.controller.dart';
import 'package:app_geladeira/android/stores/app.store.dart';
import 'package:app_geladeira/android/views/produto-detalhe.view.dart';
import 'package:app_geladeira/android/widgets/produtos/dialog-compra.dart';
import 'package:app_geladeira/android/widgets/produtos/produto.model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_geladeira/extensions/moeda.extension.dart';

class ProdutoItemWidget extends StatefulWidget {
  final Produto produto;

  const ProdutoItemWidget({Key key, this.produto}) : super(key: key);

  @override
  _ProdutoItemWidgetState createState() => _ProdutoItemWidgetState();
}

class _ProdutoItemWidgetState extends State<ProdutoItemWidget> {
  final controller = new HomeController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (_) => DialogCompra(
                  produto: widget.produto,
                ));
      },
      child: Card(
        color: Color(widget.produto.corPrincipal),
        child: Container(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            width: 110,
                            height: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(widget.produto.imagem),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          widget.produto.nome,
                          style: TextStyle(
                              color: Color(widget.produto.corSecundaria),
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(widget.produto.corPrincipal),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(60),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                children: [
                                  Text(
                                    widget.produto.tamanho,
                                    style: TextStyle(
                                        color:
                                            Color(widget.produto.corSecundaria),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 40),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6),
                                    child: Text(
                                      'ml',
                                      style: TextStyle(
                                          color: Color(
                                              widget.produto.corSecundaria),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
