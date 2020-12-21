import 'package:app_geladeira/android/models/compra.model.dart';
import 'package:app_geladeira/android/models/mes.model.dart';
import 'package:app_geladeira/android/stores/app.store.dart';
import 'package:app_geladeira/android/widgets/produtos/produto.model.dart';

class HomeController {
  AppStore _store = AppStore();

  DateTime get dataAtual => _store.dataAtual;

  Mes get mes => _store.obterMes(dataAtual.month);

  Mes get mesAnterior => _store.obterMesAnterior();
  Mes get mesSeguinte => _store.obterMesSeguinte();

  List<Produto> get lista => _store.listaProdutos;

  List<CompraModel> get compras => _store.compras;

  double get totalCompra => _store.totalCompra;

  void increment() {
    _store.increment();
  }

  void decrement() {
    _store.decrement();
  }

  void incrementMonth() {
    _store.incrementarMes();
  }

  void decrementMonth() {
    _store.decrementarMes();
  }

  void inserirCompra(CompraModel compra) {
    _store.adicionarCompra(compra);
  }

  double obterTotalPorMes(int mesNumero) {
    return _store.obterTotalPorMes(mesNumero);
  }
}
