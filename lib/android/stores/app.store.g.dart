// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$counterAtom = Atom(name: '_AppStore.counter');

  @override
  int get counter {
    _$counterAtom.context.enforceReadPolicy(_$counterAtom);
    _$counterAtom.reportObserved();
    return super.counter;
  }

  @override
  set counter(int value) {
    _$counterAtom.context.conditionallyRunInAction(() {
      super.counter = value;
      _$counterAtom.reportChanged();
    }, _$counterAtom, name: '${_$counterAtom.name}_set');
  }

  final _$dataAtualAtom = Atom(name: '_AppStore.dataAtual');

  @override
  DateTime get dataAtual {
    _$dataAtualAtom.context.enforceReadPolicy(_$dataAtualAtom);
    _$dataAtualAtom.reportObserved();
    return super.dataAtual;
  }

  @override
  set dataAtual(DateTime value) {
    _$dataAtualAtom.context.conditionallyRunInAction(() {
      super.dataAtual = value;
      _$dataAtualAtom.reportChanged();
    }, _$dataAtualAtom, name: '${_$dataAtualAtom.name}_set');
  }

  final _$mesAnteriorAtom = Atom(name: '_AppStore.mesAnterior');

  @override
  DateTime get mesAnterior {
    _$mesAnteriorAtom.context.enforceReadPolicy(_$mesAnteriorAtom);
    _$mesAnteriorAtom.reportObserved();
    return super.mesAnterior;
  }

  @override
  set mesAnterior(DateTime value) {
    _$mesAnteriorAtom.context.conditionallyRunInAction(() {
      super.mesAnterior = value;
      _$mesAnteriorAtom.reportChanged();
    }, _$mesAnteriorAtom, name: '${_$mesAnteriorAtom.name}_set');
  }

  final _$mesSeguinteAtom = Atom(name: '_AppStore.mesSeguinte');

  @override
  DateTime get mesSeguinte {
    _$mesSeguinteAtom.context.enforceReadPolicy(_$mesSeguinteAtom);
    _$mesSeguinteAtom.reportObserved();
    return super.mesSeguinte;
  }

  @override
  set mesSeguinte(DateTime value) {
    _$mesSeguinteAtom.context.conditionallyRunInAction(() {
      super.mesSeguinte = value;
      _$mesSeguinteAtom.reportChanged();
    }, _$mesSeguinteAtom, name: '${_$mesSeguinteAtom.name}_set');
  }

  final _$totalCompraAtom = Atom(name: '_AppStore.totalCompra');

  @override
  double get totalCompra {
    _$totalCompraAtom.context.enforceReadPolicy(_$totalCompraAtom);
    _$totalCompraAtom.reportObserved();
    return super.totalCompra;
  }

  @override
  set totalCompra(double value) {
    _$totalCompraAtom.context.conditionallyRunInAction(() {
      super.totalCompra = value;
      _$totalCompraAtom.reportChanged();
    }, _$totalCompraAtom, name: '${_$totalCompraAtom.name}_set');
  }

  final _$comprasAtom = Atom(name: '_AppStore.compras');

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

  final _$listaProdutosAtom = Atom(name: '_AppStore.listaProdutos');

  @override
  ObservableList<Produto> get listaProdutos {
    _$listaProdutosAtom.context.enforceReadPolicy(_$listaProdutosAtom);
    _$listaProdutosAtom.reportObserved();
    return super.listaProdutos;
  }

  @override
  set listaProdutos(ObservableList<Produto> value) {
    _$listaProdutosAtom.context.conditionallyRunInAction(() {
      super.listaProdutos = value;
      _$listaProdutosAtom.reportChanged();
    }, _$listaProdutosAtom, name: '${_$listaProdutosAtom.name}_set');
  }

  final _$_AppStoreActionController = ActionController(name: '_AppStore');

  @override
  void increment() {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.increment();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrement() {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.decrement();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incrementarMes() {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.incrementarMes();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementarMes() {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.decrementarMes();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Mes obterMesAnterior() {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.obterMesAnterior();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Mes obterMesSeguinte() {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.obterMesSeguinte();
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void adicionarCompra(CompraModel compra) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.adicionarCompra(compra);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  double obterTotalPorMes(int mesNumero) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.obterTotalPorMes(mesNumero);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }
}
