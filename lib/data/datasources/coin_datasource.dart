import 'package:dio/dio.dart';
import 'package:ubx/data/datasources/coins_client.dart';
import 'package:ubx/data/models/market/market_model.dart';
import 'package:ubx/data/models/ohlc/ohlc_model.dart';

import '../models/coins/coins_model.dart';

abstract class CoinsDataSource{
  Future<List<CoinModel>> getCoinsList();
  Future<List<OHLCModel>> getCoin(String coinId);
  Future<List<MarketModel>> getMarketCoin(String coinId);
}

class CoinsDataSourceImpl implements CoinsDataSource{
  final CoinsClient coinsClient;
  CoinsDataSourceImpl({required this.coinsClient});

  @override
  Future<List<OHLCModel>> getCoin(String coinId) {
    return coinsClient.getCoin(coinId).then((value) {
      print("coinsss ${value[0].high}");
      return value;
    }).catchError((Object obj){
      switch (obj.runtimeType) {
        case DioError:
          final res = (obj as DioError).response;
          print("Got error : ${res?.statusCode} -> ${res?.data["message"]}");
          break;
        default:
          break;
      }
    });
  }

  @override
  Future<List<CoinModel>> getCoinsList() {
    return coinsClient.getCoinsList().then((value) {
      print("anong value ${value?.length}");
      return value;
    }).catchError((Object obj){
      print("Got error obj: $obj");
      switch (obj.runtimeType) {
        case DioError:
          final res = (obj as DioError).response;
          print("Got error : ${res?.statusCode} -> ${res}");
          break;
        default:
          break;
      }
    });
  }

  @override
  Future<List<MarketModel>> getMarketCoin(String coinId) {
    return coinsClient.getMarketCoin(coinId).then((value) {
      print("coin value ${value[0].baseCurrencyName}");
      return value;
    }).catchError((Object obj){
      switch (obj.runtimeType) {
        case DioError:
          final res = (obj as DioError).response;
          print("Got error : ${res?.statusCode} -> ${res?.data["message"]}");
          break;
        default:
          break;
      }
    });
  }


}