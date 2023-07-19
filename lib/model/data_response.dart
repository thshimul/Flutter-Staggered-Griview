// To parse this JSON data, do
//
//     final fullDataRespose = fullDataResposeFromJson(jsonString);

import 'dart:convert';

List<FullDataRespose> fullDataResposeFromJson(String str) => List<FullDataRespose>.from(json.decode(str).map((x) => FullDataRespose.fromJson(x)));

String fullDataResposeToJson(List<FullDataRespose> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class FullDataRespose {
  Name? name;
  Map<String, Currency>? currencies;

  FullDataRespose({
    this.name,
    this.currencies,
  });

  factory FullDataRespose.fromJson(Map<String, dynamic> json) => FullDataRespose(
    name: json["name"] == null ? null : Name.fromJson(json["name"]),
    currencies: Map.from(json["currencies"]!).map((k, v) => MapEntry<String, Currency>(k, Currency.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "name": name?.toJson(),
    "currencies": Map.from(currencies!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class Currency {
  String? name;
  String? symbol;

  Currency({
    this.name,
    this.symbol,
  });

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    name: json["name"],
    symbol: json["symbol"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "symbol": symbol,
  };
}

class Name {
  String? common;
  String? official;
  Map<String, NativeName>? nativeName;

  Name({
    this.common,
    this.official,
    this.nativeName,
  });

  factory Name.fromJson(Map<String, dynamic> json) => Name(
    common: json["common"],
    official: json["official"],
    nativeName: Map.from(json["nativeName"]!).map((k, v) => MapEntry<String, NativeName>(k, NativeName.fromJson(v))),
  );

  Map<String, dynamic> toJson() => {
    "common": common,
    "official": official,
    "nativeName": Map.from(nativeName!).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
  };
}

class NativeName {
  String? official;
  String? common;

  NativeName({
    this.official,
    this.common,
  });

  factory NativeName.fromJson(Map<String, dynamic> json) => NativeName(
    official: json["official"],
    common: json["common"],
  );

  Map<String, dynamic> toJson() => {
    "official": official,
    "common": common,
  };
}
