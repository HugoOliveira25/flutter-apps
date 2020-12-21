class CompraModel {
  int id;
  String dataCompra;
  String produto;
  int quantidade;
  double valor;
  double total;
  String imagem;
  int corPrincipal;
  int corSecundaria;

  CompraModel(
      {this.id,
      this.dataCompra,
      this.produto,
      this.quantidade,
      this.valor = 0,
      this.total = 0,
      this.imagem,
      this.corPrincipal,
      this.corSecundaria});

  CompraModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dataCompra = json['dataCompra'];
    produto = json['produto'];
    quantidade = json['quantidade'];
    valor = json['valor'];
    total = json['total'];
    imagem = json['imagem'];
    corPrincipal = json['corPrincipal'];
    corSecundaria = json['corSecundaria'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['dataCompra'] = this.dataCompra;
    data['produto'] = this.produto;
    data['quantidade'] = this.quantidade;
    data['valor'] = this.valor;
    data['total'] = this.total;
    data['imagem'] = this.imagem;
    data['corPrincipal'] = this.corPrincipal;
    data['corSecundaria'] = this.corSecundaria;

    return data;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'dataCompra': dataCompra,
      'produto': produto,
      'quantidade': quantidade,
      'valor': valor,
      'total': total,
      'imagem': imagem,
      'corPrincipal': corPrincipal,
      'corSecundaria': corSecundaria,
    };
  }

  Map<dynamic, String> fromMap() {
    return {
      id: 'id',
      dataCompra: 'dataCompra',
      produto: 'produto',
      quantidade: 'quantidade',
      valor: 'valor',
      total: 'total',
      imagem: 'imagem',
      corPrincipal: 'corPrincipal',
      corSecundaria: 'corSecundaria',
    };
  }

  DateTime obterDataCompra(String data) {
    return DateTime.parse(data);
  }
}
