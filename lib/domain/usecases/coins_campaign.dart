

import 'package:ubx/domain/repository/coins_repository.dart';
import 'package:ubx/domain/usecases/use_case.dart';

class CoinsCampaign implements UseCase{
  final CoinsRepository coinsRepository;

  CoinsCampaign({required this.coinsRepository});



  @override
  Future getCoinsList() async {
    return await coinsRepository.getCoinsList();

  }

  @override
  Future getCoin({required String coinId}) async {
    return await coinsRepository.getCoin(coinId);
  }

  @override
  Future getMarketCoin({required String coinId}) async {
    return await coinsRepository.getMarketCoin(coinId);
  }




}