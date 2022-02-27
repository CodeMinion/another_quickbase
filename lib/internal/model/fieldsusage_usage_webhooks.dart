part of swagger.api;

class FieldsusageUsageWebhooks {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageWebhooks();

  @override
  String toString() {
    return 'FieldsusageUsageWebhooks[count=$count, ]';
  }

  FieldsusageUsageWebhooks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageWebhooks> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageWebhooks>.empty(growable: true) : json.map((value) => FieldsusageUsageWebhooks.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageWebhooks> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageWebhooks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageWebhooks.fromJson(value));
    }
    return map;
  }
}
