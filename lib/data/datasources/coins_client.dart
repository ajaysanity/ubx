

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:ubx/data/models/market/market_model.dart';

import '../models/coins/coins_model.dart';
import '../models/ohlc/ohlc_model.dart';
part 'coins_client.g.dart';

@RestApi(baseUrl: "https://api.coinpaprika.com/v1")

abstract class CoinsClient{
factory CoinsClient(Dio dio, {String baseUrl}) = _CoinsClient;

@GET("/coins")
Future<List<CoinModel>> getCoinsList();

@GET("/coins/{coinId}/ohlcv/latest/")
  Future<List<OHLCModel>> getCoin(@Path("coinId") String bitcoinId);

@GET("/coins/{coinId}/markets")
Future<List<MarketModel>> getMarketCoin(@Path("coinId") String bitcoinId);
}