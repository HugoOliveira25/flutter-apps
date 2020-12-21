import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

extension Data on DateTime {
  String formatarData() {
    initializeDateFormatting('pt_BR', null);
    return DateFormat('dd/MM/yyyy').format(this);
  }

  DateTime formatarDataParaBanco() {
    initializeDateFormatting('pt_BR', null);
    var dia = int.parse(DateFormat('dd').format(this));
    var mes = int.parse(DateFormat('MM').format(this));
    var ano = int.parse(DateFormat('yyyy').format(this));
    return DateTime(ano, mes, dia);
  }

  String formatarData2() {
    initializeDateFormatting('pt_BR', null);
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String formatarDataAnoMes() {
    initializeDateFormatting('pt_BR', null);
    return DateFormat('yyyy-MM').format(this);
  }
}
