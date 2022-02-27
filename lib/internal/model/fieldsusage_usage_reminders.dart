part of swagger.api;

class FieldsusageUsageReminders {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageReminders();

  @override
  String toString() {
    return 'FieldsusageUsageReminders[count=$count, ]';
  }

  FieldsusageUsageReminders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageReminders> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageReminders>.empty(growable: true) : json.map((value) => FieldsusageUsageReminders.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageReminders> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageReminders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageReminders.fromJson(value));
    }
    return map;
  }
}
