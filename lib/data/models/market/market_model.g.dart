// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MarketModel _$MarketModelFromJson(Map<String, dynamic> json) => MarketModel(
      exchangeId: json['exchangeId'] as String?,
      exchangeName: json['exchangeName'] as String?,
      pair: json['pair'] as String?,
      baseCurrencyId: json['baseCurrencyId'] as String?,
      baseCurrencyName: json['baseCurrencyName'] as String?,
      quoteCurrencyId: json['quoteCurrencyId'] as String?,
      quoteCurrencyName: json['quoteCurrencyName'] as String?,
      marketUrl: json['marketUrl'] as String?,
      category: json['category'] as String?,
      feeType: json['feeType'] as String?,
      outlier: json['outlier'] as bool?,
      adjustedVolume24hShare:
          (json['adjustedVolume24hShare'] as num?)?.toDouble(),
      quotes:
          json['quotes'] == null ? null : QuotesModel.fromJson(json['quotes']),
      trustScore: json['trustScore'] as String?,
      lastUpdated: json['lastUpdated'] as String?,
    );

Map<String, dynamic> _$MarketModelToJson(MarketModel instance) =>
    <String, dynamic>{
      'exchangeId': instance.exchangeId,
      'exchangeName': instance.exchangeName,
      'pair': instance.pair,
      'baseCurrencyId': instance.baseCurrencyId,
      'baseCurrencyName': instance.baseCurrencyName,
      'quoteCurrencyId': instance.quoteCurrencyId,
      'quoteCurrencyName': instance.quoteCurrencyName,
      'marketUrl': instance.marketUrl,
      'category': instance.category,
      'feeType': instance.feeType,
      'outlier': instance.outlier,
      'adjustedVolume24hShare': instance.adjustedVolume24hShare,
      'quotes': instance.quotes?.toJson(),
      'trustScore': instance.trustScore,
      'lastUpdated': instance.lastUpdated,
    };

QuotesModel _$QuotesModelFromJson(Map<String, dynamic> json) => QuotesModel(
      USD: json['USD'] == null ? null : USDModel.fromJson(json['USD']),
    );

Map<String, dynamic> _$QuotesModelToJson(QuotesModel instance) =>
    <String, dynamic>{
      'USD': instance.USD?.toJson(),
    };

USDModel _$USDModelFromJson(Map<String, dynamic> json) => USDModel(
      price: (json['price'] as num?)?.toDouble(),
      volume24h: (json['volume24h'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$USDModelToJson(USDModel instance) => <String, dynamic>{
      'price': instance.price,
      'volume24h': instance.volume24h,
    };
