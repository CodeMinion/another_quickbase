part of swagger.api;

class FieldsusageUsageActions {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageActions();

  @override
  String toString() {
    return 'FieldsusageUsageActions[count=$count, ]';
  }

  FieldsusageUsageActions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageActions> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageActions>.empty(growable: true) : json.map((value) => FieldsusageUsageActions.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageActions> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageActions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageActions.fromJson(value));
    }
    return map;
  }
}
