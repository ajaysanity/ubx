// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coins_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinListModel _$CoinListModelFromJson(Map<String, dynamic> json) =>
    CoinListModel(
      coins: (json['coins'] as List<dynamic>?)
          ?.map((e) => CoinModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CoinListModelToJson(CoinListModel instance) =>
    <String, dynamic>{
      'coins': instance.coins?.map((e) => e.toJson()).toList(),
    };

CoinModel _$CoinModelFromJson(Map<String, dynamic> json) => CoinModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      symbol: json['symbol'] as String?,
      rank: json['rank'] as int?,
      isNew: json['isNew'] as bool?,
      isActive: json['isActive'] as bool?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CoinModelToJson(CoinModel instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'symbol': instance.symbol,
      'rank': instance.rank,
      'isNew': instance.isNew,
      'isActive': instance.isActive,
      'type': instance.type,
    };
