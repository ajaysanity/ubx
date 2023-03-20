

import 'package:ubx/data/datasources/coin_datasource.dart';
import 'package:ubx/domain/entities/coins_entity.dart';
import 'package:ubx/domain/entities/market_entity.dart';
import 'package:ubx/domain/entities/ohlc_entity.dart';
import 'package:ubx/domain/repository/coins_repository.dart';

class CoinsRepositoryImpl extends CoinsRepository{
  final CoinsDataSource coinsDataSource;

  CoinsRepositoryImpl({required this.coinsDataSource});
  @override
  Future<List<OHLCEntity>> getCoin(String coinId) {
    return coinsDataSource.getCoin(coinId);
  }

  @override
  Future<List<CoinEntity>> getCoinsList() {
    return coinsDataSource.getCoinsList();

  }

  @override
  Future<List<MarketEntity>> getMarketCoin(String coinId) {
    // TODO: implement getMarketCoin
    return coinsDataSource.getMarketCoin(coinId);
  }


}