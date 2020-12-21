import 'package:app_geladeira/android/models/compra.model.dart';
import 'package:app_geladeira/settings.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:app_geladeira/extensions/lista.extension.dart';
import 'package:app_geladeira/extensions/data.extension.dart';

class CompraRepositorio {
  Future<Database> _getDatabase() async {
    return openDatabase(
      join(
        await getDatabasesPath(),
        DATABASE_NAME,
      ),
      onCreate: (db, version) {
        return db.execute(CREATE_TABLE_COMPRAS_SCRIPT);
      },
      version: 1,
    );
  }

  Future inserir(CompraModel model) async {
    try {
      final Database db = await _getDatabase();

      await db.insert(TABLE_NAME, model.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace);
    } catch (ex) {
      print(ex);
      return;
    }
  }

  Future<List<CompraModel>> obterUltimasCompras() async {
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps =
          await db.query(TABLE_NAME, limit: 5, orderBy: 'id DESC');
      return List.generate(
        maps.length,
        (i) => CompraModel.fromJson(maps[i]),
      );
    } catch (ex) {
      print(ex);
      return new List<CompraModel>();
    }
  }

  Future<double> obterComprasPorData(DateTime data) async {
    var dataCompra = data.formatarDataAnoMes();
    dataCompra = '$dataCompra-%%';
    try {
      final Database db = await _getDatabase();
      final List<Map<String, dynamic>> maps = await db.query(TABLE_NAME,
          where: 'dataCompra LIKE ?', whereArgs: [dataCompra]);
      var compras = List.generate(
        maps.length,
        (i) => CompraModel.fromJson(maps[i]),
      );
      var totais = compras.map((e) => e.total).toList();
      return totais.sum();
    } catch (ex) {
      print(ex);
      return 0;
    }
  }

  Future excluir(int id) async {
    try {
      final Database db = await _getDatabase();
      db.delete(
        TABLE_NAME,
        where: "id = ?",
        whereArgs: [id],
      );
    } catch (ex) {
      print(ex);
    }
  }
}
