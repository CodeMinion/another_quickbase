part of swagger.api;

class FieldsusageUsageRelationships {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageRelationships();

  @override
  String toString() {
    return 'FieldsusageUsageRelationships[count=$count, ]';
  }

  FieldsusageUsageRelationships.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageRelationships> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageRelationships>.empty(growable: true) : json.map((value) => FieldsusageUsageRelationships.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageRelationships> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageRelationships>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageRelationships.fromJson(value));
    }
    return map;
  }
}
