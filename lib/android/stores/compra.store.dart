import 'package:app_geladeira/android/models/compra.model.dart';
import 'package:app_geladeira/repositorios/compra.repositorio.dart';
import 'package:mobx/mobx.dart';
part 'compra.store.g.dart';

class CompraStore = _CompraStore with _$CompraStore;

abstract class _CompraStore with Store {
  @observable
  ObservableList<CompraModel> compras = new ObservableList<CompraModel>();

  @observable
  double totalPorMes = 0;

  @action
  obterUltimasCompras() async {
    final repositorio = new CompraRepositorio();
    compras = new ObservableList<CompraModel>();
    var data = await repositorio.obterUltimasCompras();
    compras.addAll(data);
  }

  @action
  obterComprasPorData(DateTime dataCompra) async {
    final repositorio = new CompraRepositorio();
    totalPorMes = 0;
    var data = await repositorio.obterComprasPorData(dataCompra);
    totalPorMes = data;
  }
}
