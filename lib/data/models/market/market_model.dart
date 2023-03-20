import 'package:json_annotation/json_annotation.dart';
import 'package:ubx/domain/entities/market_entity.dart';
part 'market_model.g.dart';

@JsonSerializable(explicitToJson: true)
class MarketModel extends MarketEntity {
  final String? exchangeId;
  final String? exchangeName;
  final String? pair;
  final String? baseCurrencyId;
  final String? baseCurrencyName;
  final String? quoteCurrencyId;
  final String? quoteCurrencyName;
  final String? marketUrl;
  final String? category;
  final String? feeType;
  final bool? outlier;
  final double? adjustedVolume24hShare;
  final QuotesModel? quotes;
  final String? trustScore;
  final String? lastUpdated;

  MarketModel(
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

  factory MarketModel.fromJson(json) => _$MarketModelFromJson(json);

  Map<String, dynamic> toJson() => _$MarketModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuotesModel extends QuotesEntity {
  final USDModel? USD;

  QuotesModel({this.USD});
  factory QuotesModel.fromJson(json) => _$QuotesModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuotesModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class USDModel extends USDEntity {
  final double? price;
  final double? volume24h;

  USDModel({this.price, this.volume24h});
  factory USDModel.fromJson(json) => _$USDModelFromJson(json);

  Map<String, dynamic> toJson() => _$USDModelToJson(this);
}
