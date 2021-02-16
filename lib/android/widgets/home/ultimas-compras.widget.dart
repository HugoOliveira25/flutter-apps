import 'package:app_geladeira/android/controllers/compra.controller.dart';
import 'package:app_geladeira/android/controllers/home.controller.dart';
import 'package:app_geladeira/android/widgets/home/ultima-compra-item.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class UltimasComprasWidget extends StatefulWidget {
  @override
  _UltimasComprasWidgetState createState() => _UltimasComprasWidgetState();
}

class _UltimasComprasWidgetState extends State<UltimasComprasWidget> {
  final compraController = new CompraController();
  final controller = new HomeController();

  @override
  void initState() {
    super.initState();
    compraController.obterUltimasCompras();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.053,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(width: 1),
                      ),
                    ),
                    child: Text(
                      'Últimas compras',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.95,
          height: MediaQuery.of(context).size.height * 0.48,
          child: Observer(
            builder: (_) => ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: compraController.compras.length,
                itemBuilder: (BuildContext context, int index) {
                  return UltimaCompraItemWidget(
                    compra: compraController.compras[index],
                  );
                }),
          ),
        )
      ],
    );
  }
}
