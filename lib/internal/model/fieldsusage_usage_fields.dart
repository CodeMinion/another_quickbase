part of swagger.api;

class FieldsusageUsageFields {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageFields();

  @override
  String toString() {
    return 'FieldsusageUsageFields[count=$count, ]';
  }

  FieldsusageUsageFields.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageFields> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageFields>.empty(growable: true) : json.map((value) => FieldsusageUsageFields.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageFields> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageFields>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageFields.fromJson(value));
    }
    return map;
  }
}
