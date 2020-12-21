// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'compra.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CompraStore on _CompraStore, Store {
  final _$comprasAtom = Atom(name: '_CompraStore.compras');

  @override
  ObservableList<CompraModel> get compras {
    _$comprasAtom.context.enforceReadPolicy(_$comprasAtom);
    _$comprasAtom.reportObserved();
    return super.compras;
  }

  @override
  set compras(ObservableList<CompraModel> value) {
    _$comprasAtom.context.conditionallyRunInAction(() {
      super.compras = value;
      _$comprasAtom.reportChanged();
    }, _$comprasAtom, name: '${_$comprasAtom.name}_set');
  }

  final _$totalPorMesAtom = Atom(name: '_CompraStore.totalPorMes');

  @override
  double get totalPorMes {
    _$totalPorMesAtom.context.enforceReadPolicy(_$totalPorMesAtom);
    _$totalPorMesAtom.reportObserved();
    return super.totalPorMes;
  }

  @override
  set totalPorMes(double value) {
    _$totalPorMesAtom.context.conditionallyRunInAction(() {
      super.totalPorMes = value;
      _$totalPorMesAtom.reportChanged();
    }, _$totalPorMesAtom, name: '${_$totalPorMesAtom.name}_set');
  }

  final _$obterUltimasComprasAsyncAction = AsyncAction('obterUltimasCompras');

  @override
  Future obterUltimasCompras() {
    return _$obterUltimasComprasAsyncAction
        .run(() => super.obterUltimasCompras());
  }

  final _$obterComprasPorDataAsyncAction = AsyncAction('obterComprasPorData');

  @override
  Future obterComprasPorData(DateTime dataCompra) {
    return _$obterComprasPorDataAsyncAction
        .run(() => super.obterComprasPorData(dataCompra));
  }
}
