import 'package:app_geladeira/android/controllers/compra.controller.dart';
import 'package:app_geladeira/android/controllers/home.controller.dart';
import 'package:app_geladeira/android/widgets/home/ultimas-compras.widget.dart';
import 'package:app_geladeira/extensions/moeda.extension.dart';
import 'package:app_geladeira/repositorios/compra.repositorio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final repositorio = CompraRepositorio();
  final controller = new HomeController();
  final compraController = new CompraController();

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    super.initState();
    compraController.obterComprasPorData(controller.dataAtual);
  }

  Future<bool> onCloseApp() async {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: Text('Sair'),
              content: Text('Deseja sair do app?'),
              actions: [
                FlatButton(
                  child: Text('Não'),
                  onPressed: () => Navigator.pop(context, false),
                ),
                FlatButton(
                  child: Text('Sim'),
                  onPressed: () => SystemNavigator.pop(),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onCloseApp,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.logout), onPressed: onCloseApp),
          backgroundColor: Colors.black,
          elevation: 0,
          actions: [],
        ),
        backgroundColor: Color(0xFFE4E9EB),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(80),
                  bottomRight: Radius.circular(80),
                ),
                color: Colors.black,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Observer(
                        builder: (_) {
                          return Text(
                            '${controller.dataAtual.year}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          );
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                        onPressed: () {
                          controller.decrementMonth();
                          compraController
                              .obterComprasPorData(controller.dataAtual);
                        },
                        icon: Icon(
                          Icons.navigate_before,
                          size: 40,
                          color: Colors.white,
                        ),
                        label: Text(''),
                      ),
                      Observer(
                        builder: (_) {
                          return Text(
                            '${controller.mes.descricao}',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          );
                        },
                      ),
                      FlatButton.icon(
                        onPressed: () {
                          controller.incrementMonth();
                          compraController
                              .obterComprasPorData(controller.dataAtual);
                        },
                        icon: Icon(
                          Icons.navigate_next,
                          size: 40,
                          color: Colors.white,
                        ),
                        label: Text(''),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              'R\$',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Observer(
                            builder: (_) => Text(
                              compraController.totalPorMes
                                  .formatarMoedaSemSimbolo(),
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Total',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            UltimasComprasWidget(),
          ],
        ),
        floatingActionButton: Container(
          width: 65,
          height: 65,
          child: FittedBox(
            child: FloatingActionButton(
              child: Icon(
                Icons.shopping_cart,
                color: Theme.of(context).accentColor,
              ),
              backgroundColor: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.pushNamed(context, '/produtos');
              },
            ),
          ),
        ),
      ),
    );
  }
}
