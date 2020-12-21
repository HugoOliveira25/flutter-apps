class Produto {
  final String nome;
  final double preco;
  final String imagem;
  final int corPrincipal;
  final int corSecundaria;
  final String tamanho;
  bool favorito;

  Produto(
      {this.nome,
      this.preco,
      this.imagem,
      this.corPrincipal,
      this.corSecundaria,
      this.tamanho,
      this.favorito});
}
