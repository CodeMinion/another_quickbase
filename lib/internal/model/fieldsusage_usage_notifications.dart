part of swagger.api;

class FieldsusageUsageNotifications {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageNotifications();

  @override
  String toString() {
    return 'FieldsusageUsageNotifications[count=$count, ]';
  }

  FieldsusageUsageNotifications.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageNotifications> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageNotifications>.empty(growable: true) : json.map((value) => FieldsusageUsageNotifications.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageNotifications> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageNotifications>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageNotifications.fromJson(value));
    }
    return map;
  }
}
