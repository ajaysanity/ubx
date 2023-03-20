// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ohlc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OHLCListModel _$OHLCListModelFromJson(Map<String, dynamic> json) =>
    OHLCListModel(
      oHLC: (json['oHLC'] as List<dynamic>?)
          ?.map((e) => OHLCModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OHLCListModelToJson(OHLCListModel instance) =>
    <String, dynamic>{
      'oHLC': instance.oHLC?.map((e) => e.toJson()).toList(),
    };

OHLCModel _$OHLCModelFromJson(Map<String, dynamic> json) => OHLCModel(
      timeOpen: json['timeOpen'] as String?,
      timeClose: json['timeClose'] as String?,
      open: (json['open'] as num?)?.toDouble(),
      high: (json['high'] as num?)?.toDouble(),
      low: (json['low'] as num?)?.toDouble(),
      close: (json['close'] as num?)?.toDouble(),
      volume: json['volume'] as int?,
      marketCap: json['market_cap'] as int?,
    );

Map<String, dynamic> _$OHLCModelToJson(OHLCModel instance) => <String, dynamic>{
      'timeOpen': instance.timeOpen,
      'timeClose': instance.timeClose,
      'open': instance.open,
      'high': instance.high,
      'low': instance.low,
      'close': instance.close,
      'volume': instance.volume,
      'market_cap': instance.marketCap,
    };
