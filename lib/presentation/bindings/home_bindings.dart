import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ubx/data/datasources/coin_datasource.dart';
import 'package:ubx/data/datasources/coins_client.dart';
import 'package:ubx/data/repository/coins_repository_impl.dart';
import 'package:ubx/domain/usecases/coins_campaign.dart';
import 'package:ubx/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Get.lazyPut(() => CoinsClient(Get.find<Dio>()));
    Get.lazyPut(() => CoinsDataSourceImpl(coinsClient: Get.find<CoinsClient>()));
    Get.lazyPut(() => CoinsRepositoryImpl(coinsDataSource: Get.find<CoinsDataSourceImpl>()));
    Get.lazyPut(() => CoinsCampaign(coinsRepository: Get.find<CoinsRepositoryImpl>()));
    Get.lazyPut(() => HomeController(coinsCampaign: Get.find<CoinsCampaign>()));
  }

}