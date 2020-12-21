import 'package:app_geladeira/android/views/historico-compras.view.dart';
import 'package:app_geladeira/android/views/home-view.dart';
import 'package:flutter/material.dart';

import 'products-view.dart';

class TabsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE4E9EB),
      body: TabBarView(
        children: [
          HomeView(),
          ProductsView(),
          HistoricoComprasView(),
        ],
      ),
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.home),
          ),
          Tab(
            icon: new Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: new Icon(Icons.shopping_bag),
          ),
        ],
        labelColor: Theme.of(context).primaryColor,
        unselectedLabelColor: Colors.black38,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
