import 'package:app_geladeira/android/controllers/home.controller.dart';
import 'package:app_geladeira/android/models/compra.model.dart';
import 'package:app_geladeira/android/views/home-view.dart';
import 'package:app_geladeira/android/widgets/produtos/produto.model.dart';
import 'package:app_geladeira/repositorios/compra.repositorio.dart';
import 'package:flutter/material.dart';
import 'package:app_geladeira/extensions/moeda.extension.dart';

import 'package:app_geladeira/extensions/data.extension.dart';

class DialogCompra extends StatefulWidget {
  final Produto produto;

  DialogCompra({Key key, this.produto}) : super(key: key);
  @override
  _DialogCompraState createState() => _DialogCompraState();
}

class _DialogCompraState extends State<DialogCompra> {
  var repositorio = new CompraRepositorio();
  int quantidade = 1;
  final controller = new HomeController();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Container(
                width: 100,
                height: 100,
                decoration: new BoxDecoration(
                  color: Color(widget.produto.corPrincipal),
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(widget.produto.imagem),
                  ),
                ),
              ),
            ),
            Text(
              widget.produto.nome,
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Text(
                      widget.produto.tamanho,
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 6),
                      child: Text(
                        'ml',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'R\$',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      widget.produto.preco.formatarMoedaSemSimbolo(),
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton.icon(
                  onPressed: () {
                    setState(() {
                      if (!(quantidade <= 1)) quantidade--;
                    });
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Theme.of(context).primaryColor,
                  ),
                  label: Text(''),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '$quantidade',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 10,
                ),
                FlatButton.icon(
                    onPressed: () {
                      setState(() {
                        quantidade++;
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: Theme.of(context).primaryColor,
                    ),
                    label: Text(''))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    color: Color(widget.produto.corPrincipal),
                    onPressed: () {
                      var compra = CompraModel(
                        produto:
                            '${widget.produto.nome} ${widget.produto.tamanho}ml',
                        imagem: widget.produto.imagem,
                        dataCompra: DateTime.now().formatarData2(),
                        quantidade: quantidade,
                        total: quantidade * widget.produto.preco,
                        valor: widget.produto.preco,
                        corPrincipal: widget.produto.corPrincipal,
                        corSecundaria: widget.produto.corSecundaria,
                      );
                      controller.inserirCompra(compra);
                      repositorio.inserir(compra);
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => HomeView()),
                          (route) => false);
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: Color(widget.produto.corSecundaria),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '${(widget.produto.preco * quantidade).formatarMoeda()}',
                          style: TextStyle(
                              color: Color(widget.produto.corSecundaria),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
