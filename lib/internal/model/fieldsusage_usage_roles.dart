part of swagger.api;

class FieldsusageUsageRoles {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageRoles();

  @override
  String toString() {
    return 'FieldsusageUsageRoles[count=$count, ]';
  }

  FieldsusageUsageRoles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageRoles> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageRoles>.empty(growable: true) : json.map((value) => FieldsusageUsageRoles.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageRoles> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageRoles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageRoles.fromJson(value));
    }
    return map;
  }
}
