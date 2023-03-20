abstract class UseCase<Input, Output> {
  Future<Output> getCoin({required String coinId});
  Future<Output> getCoinsList();
  Future<Output> getMarketCoin({required String coinId});

}