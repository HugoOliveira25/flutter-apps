const String DATABASE_NAME = "compras.db";
const String TABLE_NAME = "compras";
const String CREATE_TABLE_COMPRAS_SCRIPT =
    "CREATE TABLE compras(id INTEGER PRIMARY KEY, dataCompra DATETIME, produto TEXT, quantidade INTEGER, valor REAL, total REAL, imagem TEXT, corPrincipal INTEGER, corSecundaria INTEGER);";
