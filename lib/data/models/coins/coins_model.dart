import 'package:json_annotation/json_annotation.dart';
import 'package:ubx/domain/entities/coins_entity.dart';

part 'coins_model.g.dart';

@JsonSerializable(explicitToJson: true)
class CoinListModel extends CoinListEntity {
  final List<CoinModel>? coins;

  CoinListModel({this.coins});

  factory CoinListModel.fromJson(json) =>
      _$CoinListModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoinListModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CoinModel extends CoinEntity {
  final String? id;
  final String? name;
  final String? symbol;
  final int? rank;
  final bool? isNew;
  final bool? isActive;
  final String? type;

  CoinModel(
      {this.id,
      this.name,
      this.symbol,
      this.rank,
      this.isNew,
      this.isActive,
      this.type});

  factory CoinModel.fromJson(Map<String, dynamic> json) =>
      _$CoinModelFromJson(json);

  Map<String, dynamic> toJson() => _$CoinModelToJson(this);
}
