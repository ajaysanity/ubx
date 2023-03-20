import 'package:json_annotation/json_annotation.dart';
import 'package:ubx/domain/entities/ohlc_entity.dart';
part 'ohlc_model.g.dart';

@JsonSerializable(explicitToJson: true)
class OHLCListModel extends OHLCListEntity {
  final List<OHLCModel>? oHLC;

  OHLCListModel({this.oHLC});
  factory OHLCListModel.fromJson(Map<String, dynamic> json) =>
      _$OHLCListModelFromJson(json);

  Map<String, dynamic> toJson() => _$OHLCListModelToJson(this);
}
@JsonSerializable(explicitToJson: true)
class OHLCModel extends OHLCEntity {
  final String? timeOpen;
  final String? timeClose;
  final double? open;
  final double? high;
  final double? low;
  final double? close;
  final int? volume;
  @JsonKey(name: "market_cap")
  final int? marketCap;

  OHLCModel(
      {this.timeOpen,
      this.timeClose,
      this.open,
      this.high,
      this.low,
      this.close,
      this.volume,
      this.marketCap});
  factory OHLCModel.fromJson(Map<String, dynamic> json) =>
      _$OHLCModelFromJson(json);

  Map<String, dynamic> toJson() => _$OHLCModelToJson(this);
}
