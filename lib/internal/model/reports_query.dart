part of swagger.api;

class ReportsQuery {
  /* The table identifier for the report. */
  String? tableId = null;
/* Filter used to query for data. */
  String? filter = null;
/* Calculated formula fields. */
  List<ReportsQueryFormulaFields> formulaFields = [];

  ReportsQuery();

  @override
  String toString() {
    return 'ReportsQuery[tableId=$tableId, filter=$filter, formulaFields=$formulaFields, ]';
  }

  ReportsQuery.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    tableId = json['tableId'];
    filter = json['filter'];
    formulaFields = ReportsQueryFormulaFields.listFromJson(json['formulaFields']);
  }

  Map<String, dynamic> toJson() {
    return {
      'tableId': tableId,
      'filter': filter,
      'formulaFields': formulaFields
     };
  }

  static List<ReportsQuery> listFromJson(List<dynamic>? json) {
    return json == null ? List<ReportsQuery>.empty(growable: true) : json.map((value) => ReportsQuery.fromJson(value)).toList();
  }

  static Map<String, ReportsQuery> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, ReportsQuery>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = ReportsQuery.fromJson(value));
    }
    return map;
  }
}
