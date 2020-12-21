import 'package:intl/intl.dart';

extension Moeda on double {
  String formatarMoeda() {
    return NumberFormat.simpleCurrency(locale: 'pt_BR').format(this);
  }

  String formatarMoedaSemSimbolo() {
    return NumberFormat.currency(locale: 'pt_BR', name: '', symbol: '')
        .format(this);
  }
}
