class MarketEntity {
  String? exchangeId;
  String? exchangeName;
  String? pair;
  String? baseCurrencyId;
  String? baseCurrencyName;
  String? quoteCurrencyId;
  String? quoteCurrencyName;
  String? marketUrl;
  String? category;
  String? feeType;
  bool? outlier;
  double? adjustedVolume24hShare;
  QuotesEntity? quotes;
  String? trustScore;
  String? lastUpdated;

  MarketEntity(
      {this.exchangeId,
        this.exchangeName,
        this.pair,
        this.baseCurrencyId,
        this.baseCurrencyName,
        this.quoteCurrencyId,
        this.quoteCurrencyName,
        this.marketUrl,
        this.category,
        this.feeType,
        this.outlier,
        this.adjustedVolume24hShare,
        this.quotes,
        this.trustScore,
        this.lastUpdated});

}

class QuotesEntity {
  USDEntity? USD;

  QuotesEntity({this.USD});


}

class USDEntity {
  double? price;
  double? volume24h;

  USDEntity({this.price, this.volume24h});


}
