part of swagger.api;

class FieldsusageUsageReports {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageReports();

  @override
  String toString() {
    return 'FieldsusageUsageReports[count=$count, ]';
  }

  FieldsusageUsageReports.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageReports> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageReports>.empty(growable: true) : json.map((value) => FieldsusageUsageReports.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageReports> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsageReports>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageReports.fromJson(value));
    }
    return map;
  }
}
