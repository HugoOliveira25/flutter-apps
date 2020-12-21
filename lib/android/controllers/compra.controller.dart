import 'package:app_geladeira/android/models/compra.model.dart';
import 'package:app_geladeira/android/stores/compra.store.dart';

class CompraController {
  final _compraStore = CompraStore();

  List<CompraModel> get compras => _compraStore.compras;
  double get totalPorMes => _compraStore.totalPorMes;

  void obterUltimasCompras() {
    _compraStore.obterUltimasCompras();
  }

  void obterComprasPorData(DateTime dataCompra) {
    _compraStore.obterComprasPorData(dataCompra);
  }
}
