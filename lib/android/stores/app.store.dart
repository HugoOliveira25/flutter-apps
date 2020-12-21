import 'package:app_geladeira/android/models/compra.model.dart';
import 'package:app_geladeira/android/models/mes.model.dart';
import 'package:app_geladeira/android/widgets/produtos/produto.model.dart';
import 'package:app_geladeira/extensions/lista.extension.dart';
import 'package:mobx/mobx.dart';
part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  int counter = 0;

  @observable
  DateTime dataAtual = DateTime.now();

  @observable
  DateTime mesAnterior = DateTime.now().subtract(Duration(days: 30));

  @observable
  DateTime mesSeguinte = DateTime.now().add(Duration(days: 30));

  @observable
  double totalCompra = 0.00;

  @observable
  ObservableList<CompraModel> compras = List<CompraModel>().asObservable();

  @observable
  ObservableList<Produto> listaProdutos = [
    Produto(
      nome: 'Coca',
      preco: 2.20,
      imagem: 'assets/logos/coca_red_logo.png',
      corPrincipal: 0xFFFE001A,
      corSecundaria: 0xFFFFFFFF,
      tamanho: '350',
      favorito: false,
    ),
    Produto(
      nome: 'Coca Zero',
      preco: 2.20,
      imagem: 'assets/logos/coca_zero_black_logo.png',
      corPrincipal: 0xFF000000,
      corSecundaria: 0xFFe71727,
      tamanho: '350',
      favorito: false,
    ),
    Produto(
      nome: 'Coca Mini',
      preco: 1.25,
      imagem: 'assets/logos/coca_red_logo.png',
      corPrincipal: 0xFFFE001A,
      corSecundaria: 0xFFFFFFFF,
      tamanho: '220',
      favorito: false,
    ),
    Produto(
      nome: 'Zero Mini',
      preco: 1.25,
      imagem: 'assets/logos/coca_zero_black_logo.png',
      corPrincipal: 0xFF000000,
      corSecundaria: 0xFFe71727,
      tamanho: '220',
      favorito: false,
    ),
    Produto(
      nome: 'Sprite Mini',
      preco: 2.20,
      imagem: 'assets/logos/sprite_logo.png',
      corPrincipal: 0xFF3B6BA1,
      corSecundaria: 0xFF1CA961,
      tamanho: '220',
      favorito: false,
    ),
    Produto(
      nome: 'Uva Mini',
      preco: 1.20,
      imagem: 'assets/logos/fanta_logo.png',
      corPrincipal: 0xFF5E2B68,
      corSecundaria: 0xFFFFFFFF,
      tamanho: '220',
      favorito: false,
    ),
    Produto(
      nome: 'Kuat Mini',
      preco: 1.20,
      imagem: 'assets/logos/kuat_logo.png',
      corPrincipal: 0xFF027539,
      corSecundaria: 0xFFc19d0b,
      tamanho: '220',
      favorito: false,
    ),
    Produto(
      nome: 'Citrus Mini',
      preco: 1.70,
      imagem: 'assets/logos/schweppes_logo.png',
      corPrincipal: 0xFF44903B,
      corSecundaria: 0xFFfcbe00,
      tamanho: '220',
      favorito: false,
    ),
    Produto(
      nome: 'Citrus',
      preco: 2.25,
      imagem: 'assets/logos/schweppes_logo.png',
      corPrincipal: 0xFF44903B,
      corSecundaria: 0xFFfcbe00,
      tamanho: '350',
      favorito: false,
    ),
    Produto(
      nome: 'Pêssego',
      preco: 2.25,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFFDD8633,
      corSecundaria: 0xFF000000,
      tamanho: '290',
      favorito: false,
    ),
    Produto(
      nome: 'Pêssego Light',
      preco: 2.25,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFFDD8633,
      corSecundaria: 0xFF000000,
      tamanho: '290',
      favorito: false,
    ),
    Produto(
      nome: 'Maracujá',
      preco: 2.25,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFFF4DD28,
      corSecundaria: 0xFF000000,
      tamanho: '290',
      favorito: false,
    ),
    Produto(
      nome: 'Maracujá Light',
      preco: 2.25,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFFF4DD28,
      corSecundaria: 0xFF000000,
      tamanho: '290',
      favorito: false,
    ),
    Produto(
      nome: 'Uva',
      preco: 2.25,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFF5E2B68,
      corSecundaria: 0xFFFFFFFF,
      tamanho: '290',
      favorito: false,
    ),
    Produto(
      nome: 'Uva Light',
      preco: 2.25,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFF5E2B68,
      corSecundaria: 0xFFFFFFFF,
      tamanho: '290',
      favorito: false,
    ),
    Produto(
      nome: 'Manga',
      preco: 2.25,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFFEF931D,
      corSecundaria: 0xFF000000,
      tamanho: '290',
      favorito: false,
    ),
    Produto(
      nome: 'Manga Light',
      preco: 2.25,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFFEF931D,
      corSecundaria: 0xFF000000,
      tamanho: '290',
      favorito: false,
    ),
    Produto(
      nome: 'Água de Coco',
      preco: 1.50,
      imagem: 'assets/logos/delvalle_logo.png',
      corPrincipal: 0xFF70C2E7,
      corSecundaria: 0xFF000000,
      tamanho: '200',
      favorito: false,
    ),
    Produto(
      nome: 'Burn',
      preco: 4.20,
      imagem: 'assets/logos/burn_logo.png',
      corPrincipal: 0xFF14130e,
      corSecundaria: 0xFFCA6932,
      tamanho: '260',
      favorito: false,
    ),
    Produto(
      nome: 'Monster',
      preco: 6.55,
      imagem: 'assets/logos/monster_green_logo.png',
      corPrincipal: 0xFF000000,
      corSecundaria: 0xFF00ff00,
      tamanho: '220',
      favorito: true,
    ),
    Produto(
      nome: 'Ultra Violet',
      preco: 6.55,
      imagem: 'assets/logos/monster_violet_logo.png',
      corPrincipal: 0xFF673EC0,
      corSecundaria: 0xFFB0B3BA,
      tamanho: '220',
      favorito: true,
    ),
    Produto(
      nome: 'Mango',
      preco: 6.55,
      imagem: 'assets/logos/monster_mango_logo.png',
      corPrincipal: 0xFF00A3DD,
      corSecundaria: 0xFFFDAC07,
      tamanho: '220',
      favorito: true,
    ),
    Produto(
      nome: 'Laranja',
      preco: 6.55,
      imagem: 'assets/logos/monster_laranja_logo.png',
      corPrincipal: 0xFFF37127,
      corSecundaria: 0xFFFBB255,
      tamanho: '220',
      favorito: true,
    ),
    Produto(
      nome: 'Absolutely Zero',
      preco: 6.55,
      imagem: 'assets/logos/monster_absolutely_zero_logo.png',
      corPrincipal: 0xFF000000,
      corSecundaria: 0xFF6BD1EA,
      tamanho: '220',
      favorito: true,
    ),
    Produto(
      nome: 'I9 Tangerina',
      preco: 3.10,
      imagem: 'assets/logos/powerade_tangerina_logo.png',
      corPrincipal: 0xFF000000,
      corSecundaria: 0xFFEB7820,
      tamanho: '500',
      favorito: false,
    ),
    Produto(
      nome: 'I9 Limão',
      preco: 3.10,
      imagem: 'assets/logos/powerade_limao_logo.png',
      corPrincipal: 0xFF000000,
      corSecundaria: 0xFF117F47,
      tamanho: '500',
      favorito: false,
    ),
    Produto(
      nome: 'Água com Gás',
      preco: 1.20,
      imagem: 'assets/logos/agua_com_gas_logo.png',
      corPrincipal: 0xFFE4E9EB,
      corSecundaria: 0xFF499449,
      tamanho: '500',
      favorito: false,
    ),
  ].asObservable();

  @action
  void increment() {
    counter++;
  }

  @action
  void decrement() {
    counter--;
  }

  final List<Mes> meses = [
    Mes(descricaoReduzida: 'Jan', descricao: 'Janeiro', mesNumero: 1),
    Mes(descricaoReduzida: 'Fev', descricao: 'Fevereiro', mesNumero: 2),
    Mes(descricaoReduzida: 'Mar', descricao: 'Março', mesNumero: 3),
    Mes(descricaoReduzida: 'Abr', descricao: 'Abril', mesNumero: 4),
    Mes(descricaoReduzida: 'Mai', descricao: 'Maio', mesNumero: 5),
    Mes(descricaoReduzida: 'Jun', descricao: 'Junho', mesNumero: 6),
    Mes(descricaoReduzida: 'Jul', descricao: 'Julho', mesNumero: 7),
    Mes(descricaoReduzida: 'Ago', descricao: 'Agosto', mesNumero: 8),
    Mes(descricaoReduzida: 'Set', descricao: 'Setembro', mesNumero: 9),
    Mes(descricaoReduzida: 'Out', descricao: 'Outubro', mesNumero: 10),
    Mes(descricaoReduzida: 'Nov', descricao: 'Novembro', mesNumero: 11),
    Mes(descricaoReduzida: 'Dez', descricao: 'Dezembro', mesNumero: 12)
  ];

  Mes obterMes(int mesNumero) {
    return meses.where((mes) => mes.mesNumero == mesNumero).first;
  }

  @action
  void incrementarMes() {
    dataAtual = dataAtual.add(Duration(days: 30));
  }

  @action
  void decrementarMes() {
    dataAtual = dataAtual.subtract(Duration(days: 30));
  }

  @action
  Mes obterMesAnterior() {
    mesAnterior = dataAtual.subtract(Duration(days: 30));
    return meses.where((mes) => mes.mesNumero == mesAnterior.month).first;
  }

  @action
  Mes obterMesSeguinte() {
    mesSeguinte = dataAtual.add(Duration(days: 30));
    return meses.where((mes) => mes.mesNumero == mesSeguinte.month).first;
  }

  @action
  void adicionarCompra(CompraModel compra) {
    compras.add(compra);
  }

  @action
  double obterTotalPorMes(int mesNumero) {
    return compras
        .where((compra) => compra.dataCompra == mesNumero.toString())
        .map((e) => e.total)
        .toList()
        .sum();
  }
}
