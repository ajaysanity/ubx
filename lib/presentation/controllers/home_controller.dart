import 'package:get/get.dart';
import 'package:ubx/core/utils/constants.dart';
import 'package:ubx/domain/entities/coins_entity.dart';
import 'package:ubx/domain/entities/market_entity.dart';
import 'package:ubx/domain/entities/ohlc_entity.dart';
import 'package:ubx/domain/usecases/coins_campaign.dart';
import 'package:ubx/presentation/controllers/app_extentions.dart';
import 'package:ubx/presentation/screens/detail_screen.dart';
import 'package:ubx/presentation/screens/home_screen.dart';

class HomeController extends GetxController with StateMixin {
  HomeController({required this.coinsCampaign});
  final CoinsCampaign coinsCampaign;

  final RxList<CoinEntity> _coinsList = RxList<CoinEntity>(<CoinEntity>[]);
  List<CoinEntity> get coinsList => _coinsList.value;
  set coinsList(v) => _coinsList.value = v;

  final RxList<OHLCEntity> _coinDetails = RxList<OHLCEntity>(<OHLCEntity>[]);
  List<OHLCEntity> get coinDetails => _coinDetails.value;
  set coinDetails(v) => _coinDetails.value = v;

  final RxList<MarketEntity> _coinMarket = RxList<MarketEntity>(<MarketEntity>[]);
  List<MarketEntity> get coinMarket => _coinMarket.value;
  set coinMarket(v) => _coinMarket.value = v;

  final RxString _coinId = RxString(Constants.kEmpty);
  String get coinId => _coinId.value;
  set coinId(v) => _coinId.value = v;

  final RxString _coinName = RxString(Constants.kEmpty);
  String get coinName => _coinName.value;
  set coinName(v) => _coinName.value = v;

  final RxString _coinSymbol = RxString(Constants.kEmpty);
  String get coinSymbol => _coinSymbol.value;
  set coinSymbol(v) => _coinSymbol.value = v;
  @override
  void onInit() {
    _getCoinList();
    super.onInit();
  }

  void _getCoinList() async {
    try {
      change(null, status: RxStatus.loading());
      coinsList = await coinsCampaign.getCoinsList();
      if (coinsList.isEmpty) change(null, status: RxStatus.empty());
      change(null, status: RxStatus.success());
    } catch (e) {
      change(null, status: RxStatus.error(Constants.kSomethingWentWrong));
    }
  }

  void _getCoinDetails(String? id) async {
    try {
      change(null, status: RxStatus.loading());
      coinDetails = await coinsCampaign.getCoin(coinId: id!);
      coinMarket = await coinsCampaign.getMarketCoin(coinId: id!);
      if (coinDetails.isEmpty && coinMarket.isEmpty) change(null, status: RxStatus.empty());
      change(null, status: RxStatus.success());
    } catch (e) {

      change(null, status: RxStatus.error(Constants.kSomethingWentWrong));
    }
  }

  void navigateToDetail(String? id, String? coinName,String? coinSymbol) {
    this.coinSymbol = coinSymbol;
    this.coinName = coinName;
    _getCoinDetails(id);
    Get.toNamed(DetailScreen.routeName);
  }
}
