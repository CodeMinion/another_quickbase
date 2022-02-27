part of swagger.api;

class RecordsqueryGroupBy {
  /* The unique identifier of a field in a table. */
  int? fieldId = null;
/* Group by based on ascending order (ASC), descending order (DESC) or equal values (equal-values) */
  String? grouping = null;
  //enum groupingEnum {  ASC,  DESC,  equal-values,  };

  RecordsqueryGroupBy();

  @override
  String toString() {
    return 'RecordsqueryGroupBy[fieldId=$fieldId, grouping=$grouping, ]';
  }

  RecordsqueryGroupBy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fieldId = json['fieldId'];
    grouping = json['grouping'];
  }

  Map<String, dynamic> toJson() {
    return {
      'fieldId': fieldId,
      'grouping': grouping
     };
  }

  static List<RecordsqueryGroupBy> listFromJson(List<dynamic>? json) {
    return json == null ? List<RecordsqueryGroupBy>.empty(growable: true) : json.map((value) => RecordsqueryGroupBy.fromJson(value)).toList();
  }

  static Map<String, RecordsqueryGroupBy> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, RecordsqueryGroupBy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = RecordsqueryGroupBy.fromJson(value));
    }
    return map;
  }
}
