part of swagger.api;

class FieldsusageUsageExactForms {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageExactForms();

  @override
  String toString() {
    return 'FieldsusageUsageExactForms[count=$count, ]';
  }

  FieldsusageUsageExactForms.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageExactForms> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageExactForms>.empty(growable: true) : json.map((value) => FieldsusageUsageExactForms.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageExactForms> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageExactForms>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageExactForms.fromJson(value));
    }
    return map;
  }
}
