part of swagger.api;

class FieldsBody1 {
  /* List of field ids to be deleted. */
  List<int> fieldIds = [];

  FieldsBody1();

  @override
  String toString() {
    return 'FieldsBody1[fieldIds=$fieldIds, ]';
  }

  FieldsBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    fieldIds = (json['fieldIds'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'fieldIds': fieldIds
     };
  }

  static List<FieldsBody1> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsBody1>.empty(growable: true) : json.map((value) => FieldsBody1.fromJson(value)).toList();
  }

  static Map<String, FieldsBody1> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = Map<String, FieldsBody1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = FieldsBody1.fromJson(value));
    }
    return map;
  }
}
