import 'package:ubx/domain/entities/coins_entity.dart';
import 'package:ubx/domain/entities/market_entity.dart';
import 'package:ubx/domain/entities/ohlc_entity.dart';

abstract class CoinsRepository{
  Future<List<CoinEntity>> getCoinsList();
  Future<List<OHLCEntity>> getCoin(String coinId);
  Future<List<MarketEntity>> getMarketCoin(String coinId);

}