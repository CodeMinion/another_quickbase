part of swagger.api;

class FieldsusageUsageAppHomePages {
  /* the number of times a field has been used for the given item. */
  int? count = null;

  FieldsusageUsageAppHomePages();

  @override
  String toString() {
    return 'FieldsusageUsageAppHomePages[count=$count, ]';
  }

  FieldsusageUsageAppHomePages.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'count': count
     };
  }

  static List<FieldsusageUsageAppHomePages> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsageAppHomePages>.empty(growable: true) : json.map((value) =>  FieldsusageUsageAppHomePages.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsageAppHomePages> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FieldsusageUsageAppHomePages>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsageAppHomePages.fromJson(value));
    }
    return map;
  }
}
