part of swagger.api;

class RecordsBody1 {
  /* The unique identifier of the table. */
  String? from = null;
/* The filter to delete records. To delete all records specify a filter that will include all records, for example {3.GT.0} where 3 is the ID of the Record ID field. */
  String? where = null;

  RecordsBody1();

  @override
  String toString() {
    return 'RecordsBody1[from=$from, where=$where, ]';
  }

  RecordsBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    from = json['from'];
    where = json['where'];
  }

  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'where': where
     };
  }

  static List<RecordsBody1> listFromJson(List<dynamic>? json) {
    return json == null ? List<RecordsBody1>.empty(growable: true) : json.map((value) => RecordsBody1.fromJson(value)).toList();
  }

  static Map<String, RecordsBody1> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, RecordsBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = RecordsBody1.fromJson(value));
    }
    return map;
  }
}
