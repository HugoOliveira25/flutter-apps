import 'package:app_geladeira/android/controllers/home.controller.dart';
import 'package:app_geladeira/android/widgets/produtos/produto.model.dart';
import 'package:app_geladeira/extensions/moeda.extension.dart';
import 'package:flutter/material.dart';

class ProdutoDetalhe extends StatefulWidget {
  final Produto produto;

  ProdutoDetalhe({this.produto});

  @override
  _ProdutoDetalheState createState() => _ProdutoDetalheState();
}

class _ProdutoDetalheState extends State<ProdutoDetalhe> {
  int quantidade = 0;
  double total = 0.0;
  final controller = new HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Color(widget.produto.corSecundaria)),
        backgroundColor: Color(widget.produto.corPrincipal),
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: () {
              setState(() {
                widget.produto.favorito = !widget.produto.favorito;
              });
            },
            child: Icon(
              widget.produto.favorito ? Icons.favorite : Icons.favorite_border,
              color: Color(widget.produto.corSecundaria),
            ),
          ),
        ],
      ),
      backgroundColor: Color(widget.produto.corPrincipal),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.35,
            color: Color(widget.produto.corPrincipal),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 170,
                  height: 170,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(widget.produto.imagem),
                    ),
                  ),
                ),
                Text(
                  widget.produto.nome,
                  style: TextStyle(
                      color: Color(widget.produto.corSecundaria),
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(widget.produto.corSecundaria),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          widget.produto.preco.formatarMoeda(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Color(widget.produto.corPrincipal)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          widget.produto.tamanho,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Color(widget.produto.corPrincipal)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 45,
                              height: 45,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    total =
                                        double.parse(total.toStringAsFixed(2));
                                    if (quantidade > 0) {
                                      quantidade--;
                                      total -= double.parse(widget.produto.preco
                                          .toStringAsFixed(2));
                                    }
                                  });
                                },
                                child: Text(
                                  '-',
                                  style: TextStyle(
                                      color: Color(widget.produto.corPrincipal),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ),
                            ),
                            Text(
                              '$quantidade',
                              style: TextStyle(
                                  color: Color(widget.produto.corPrincipal),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                            Container(
                              width: 45,
                              height: 45,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    quantidade++;
                                    total += widget.produto.preco;
                                  });
                                },
                                child: Text(
                                  '+',
                                  style: TextStyle(
                                      color: Color(widget.produto.corPrincipal),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ),
                            ),
                            Text(
                              total.formatarMoeda(),
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Color(widget.produto.corPrincipal)),
                            ),
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
      floatingActionButton: Container(
        height: 80,
        width: 80,
        child: FittedBox(
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color(widget.produto.corPrincipal),
              child: Icon(
                Icons.shopping_cart,
                color: Color(widget.produto.corSecundaria),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              )),
        ),
      ),
    );
  }
}
