part of swagger.api;

class FieldsusageUsagePersonalReports {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsagePersonalReports();

  @override
  String toString() {
    return 'FieldsusageUsagePersonalReports[count=$count, ]';
  }

  FieldsusageUsagePersonalReports.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsagePersonalReports> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsagePersonalReports>.empty(growable: true) : json.map((value) => FieldsusageUsagePersonalReports.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsagePersonalReports> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsagePersonalReports>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsagePersonalReports.fromJson(value));
    }
    return map;
  }
}
