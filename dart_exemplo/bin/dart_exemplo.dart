
void main(List<String> arguments) {
  print(exemploDeRepeticao(100.00));
  exemploAlterarList();
  exemploMap();
  exemploClasse();
  exemploFuncaoAnonima();
  exemploMixin();
  exemploException();
  exemploNullSafety();
}

void exemploMap(){
  Map<String, double> precos = {
    "PS5": 4999.99,
    "Xbox Series X": 5299.99,
    "Switch": 4299.00
  };

  precos['PS5'] = 4799.99;
  print("Preço do PS5 atualizado: ${precos['PS5']}");
}

void testeTipos(){
  print('Hello world');
  int quantidadeProdutos = 10;
  double precoProduto = 9.99;
  String nomeProduto = "tirusbango";
  bool emEstoque = true;

  var categoriaProduto = "Informática";

  print('int: $quantidadeProdutos');
  print('double: $precoProduto');
  print('String: $nomeProduto');
  print('bool: $emEstoque');
  print('categoria: $categoriaProduto');

  var teste = categoriaProduto.runtimeType;
  print('categoria: $teste');

}

String exemploDeRepeticao(double valorDoPedido){
  double valorPedido = valorDoPedido;
  var retorno;

 if (valorPedido > 99.99) {
   retorno = "Pedido com frete gratis!";
 } else { 
  retorno ="Pedido com frete pago.";
 }

 return retorno;
}

void exemploAlterarList(){ 
  List<String> produtos = ["PS5", "Xbox", "Nintendinho"];

  for (var produto in produtos) {
    if (produto == "PS5") {
      produto = "PS5 melhor console";
      print("Produto: $produto");
    }else {
      print("Produto: $produto");
    }
  }
}
class Produto{
  String nome;
  double preco;
  String categoria;

  Produto(this.nome, this.preco, this.categoria);

  void exibirProduto(){
    print('Podruto: ${this.nome}, preço: ${this.preco}, categoria ${this.categoria}');
  }
}

/*class VideoGame extends Produto{
  String marca;

  VideoGame(this.nome, this.preco, this.categoria, this.marca : super )
}*/

abstract class Documento{

  void validarDocumento();
}

class Cpf extends Documento{
  @override
  void validarDocumento(){
    print("Documento validado");
  }
}

void exemploClasse(){
  Produto produto1 = Produto("PS5", 4300.00, "VideoGame");
  print('Podruto: ${produto1.nome}, preço: ${produto1.preco}');
}

void exemploFuncaoAnonima(){
  print("Função anonima em dart\n");
  List<int> numeros = [2,5,7,6,8];
  var numeroDobrados =  numeros.map((e) => e * 2);

  print("numeros dobrados: $numeroDobrados");
}

//é um input em classe sem precisar usar herança
mixin LogOperacao{
  void log(String mensagem){
    print("Log: $mensagem");
  }
}

class ServicoPedido with LogOperacao{
  void processarPedido(){
    log('Carregando....');
    log('Pedido processado');
  }
}

void exemploMixin(){
  print('Mixin');
  ServicoPedido servicoPedido = ServicoPedido();
  servicoPedido.processarPedido();
}

void sacar(double valor, double saldo){
  if (valor > saldo) {
    throw Exception("Saldo insuficiente");
  }
  print("Saque realizado");
}

void exemploException(){
  print("\nTratamento de excessão");
  double saldo = 100.00;
  double valor = 200.00;
  
  try {
    sacar(valor, saldo);
  } catch (e) {
    print('Erro ao sacar: $e');
  }
}

void exemploNullSafety(){
  print("\n Null safety");

  String? nomeProduto = null;

  if(nomeProduto != null){
    print("nome do produto: $nomeProduto");
  }else { 
    print("Nome do produto não disponível");
  }
}