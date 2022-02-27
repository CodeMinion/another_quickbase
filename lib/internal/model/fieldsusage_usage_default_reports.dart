part of swagger.api;

class FieldsusageUsageDefaultReports {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageDefaultReports();

  @override
  String toString() {
    return 'FieldsusageUsageDefaultReports[count=$count, ]';
  }

  FieldsusageUsageDefaultReports.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageDefaultReports> listFromJson(List<dynamic> json) {
    return json == null ? List<FieldsusageUsageDefaultReports>.empty(growable: true) : json.map((value) => FieldsusageUsageDefaultReports.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageDefaultReports> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FieldsusageUsageDefaultReports>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageDefaultReports.fromJson(value));
    }
    return map;
  }
}
