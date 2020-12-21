import 'package:app_geladeira/android/controllers/compra.controller.dart';
import 'package:app_geladeira/android/models/compra.model.dart';
import 'package:app_geladeira/android/views/home-view.dart';
import 'package:app_geladeira/repositorios/compra.repositorio.dart';
import 'package:flutter/material.dart';
import 'package:app_geladeira/extensions/moeda.extension.dart';
import 'package:app_geladeira/extensions/data.extension.dart';

class UltimaCompraItemWidget extends StatefulWidget {
  final CompraModel compra;

  const UltimaCompraItemWidget({@required this.compra});

  @override
  _UltimaCompraItemWidgetState createState() => _UltimaCompraItemWidgetState();
}

class _UltimaCompraItemWidgetState extends State<UltimaCompraItemWidget> {
  final repositorio = CompraRepositorio();
  final compraController = CompraController();

  onDelete() {
    showDialog(
        context: (context),
        builder: (ctx) {
          return AlertDialog(
            title: Text('Excluir Compra'),
            content: Text('Deseja remover esta compra?'),
            actions: [
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                child: Text('Excluir'),
                onPressed: delete,
              )
            ],
          );
        });
  }

  delete() {
    repositorio
        .excluir(widget.compra.id)
        .then((_) => {onSucess()})
        .catchError((err) {
      onError(err);
    });
  }

  onSucess() {
    compraController.obterUltimasCompras();
    Navigator.of(context).pushNamed("/").then((value) => setState(() {}));
  }

  onError(err) {
    print(err);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 6),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.30,
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.compra.imagem),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListTile(
                  title: Text(
                    '${widget.compra.produto}',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      '${widget.compra.obterDataCompra(widget.compra.dataCompra).formatarData()}',
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '${widget.compra.quantidade}x',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    '${widget.compra.total.formatarMoeda()}',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 10,
              ),
              SizedBox(
                width: 40,
                height: 40,
                child: FlatButton(
                  onPressed: onDelete,
                  child: Icon(
                    Icons.restore_from_trash,
                    color: Colors.red,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
