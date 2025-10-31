// To parse this JSON data, do
//
//     final reqRes = reqResFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/classes/meta.dart';
import 'package:paquetes/classes/person.dart';
import 'package:paquetes/classes/support.dart';

ReqRes reqResFromJson(String str) => ReqRes.fromJson(json.decode(str));

String reqResToJson(ReqRes data) => json.encode(data.toJson());

class ReqRes {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<Person> data;
  Support support;
  Meta? meta;

  ReqRes({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
    required this.support,
    this.meta,
  });

  factory ReqRes.fromJson(Map<String, dynamic> json) => ReqRes(
    page: (json['page'] as num?)?.toInt() ?? 0,
    perPage: (json['per_page'] as num?)?.toInt() ?? 0,
    total: (json['total'] as num?)?.toInt() ?? 0,
    totalPages: (json['total_pages'] as num?)?.toInt() ?? 0,
    data: json['data'] == null
        ? []
        : List<Person>.from(json['data'].map((x) => Person.fromJson(x))),
    support: json['support'] == null
        ? Support(url: '', text: '')
        : Support.fromJson(json['support']),
    meta: json['_meta'] == null ? null : Meta.fromJson(json['_meta']),
  );

  Map<String, dynamic> toJson() => {
    'page': page,
    'per_page': perPage,
    'total': total,
    'total_pages': totalPages,
    'data': List<dynamic>.from(data.map((x) => x.toJson())),
    'support': support.toJson(),
    '_meta': meta?.toJson(),
  };
}
