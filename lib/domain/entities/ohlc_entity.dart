class OHLCListEntity {
  List<OHLCEntity>? oHLC;

  OHLCListEntity({this.oHLC});

  OHLCListEntity.fromJson(Map<String, dynamic> json) {
    if (json['OHLC'] != null) {
      oHLC = <OHLCEntity>[];
      json['OHLC'].forEach((v) {
        oHLC!.add(new OHLCEntity.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.oHLC != null) {
      data['OHLC'] = this.oHLC!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class OHLCEntity {
  String? timeOpen;
  String? timeClose;
  double? open;
  double? high;
  double? low;
  double? close;
  int? volume;
  int? marketCap;

  OHLCEntity(
      {this.timeOpen,
        this.timeClose,
        this.open,
        this.high,
        this.low,
        this.close,
        this.volume,
        this.marketCap});

  OHLCEntity.fromJson(Map<String, dynamic> json) {
    timeOpen = json['time_open'];
    timeClose = json['time_close'];
    open = json['open'];
    high = json['high'];
    low = json['low'];
    close = json['close'];
    volume = json['volume'];
    marketCap = json['market_cap'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['time_open'] = this.timeOpen;
    data['time_close'] = this.timeClose;
    data['open'] = this.open;
    data['high'] = this.high;
    data['low'] = this.low;
    data['close'] = this.close;
    data['volume'] = this.volume;
    data['market_cap'] = this.marketCap;
    return data;
  }
}