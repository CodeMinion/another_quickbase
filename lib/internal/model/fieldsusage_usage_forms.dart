part of swagger.api;

class FieldsusageUsageForms {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageForms();

  @override
  String toString() {
    return 'FieldsusageUsageForms[count=$count, ]';
  }

  FieldsusageUsageForms.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageForms> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageForms>.empty(growable: true) : json.map((value) => FieldsusageUsageForms.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageForms> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageForms>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageForms.fromJson(value));
    }
    return map;
  }
}
