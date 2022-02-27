part of swagger.api;

class FieldsusageField {
  /* Field name. */
  String? name = null;
/* Field id. */
  int? id = null;
/* Field type. */
  String? type = null;

  FieldsusageField();

  @override
  String toString() {
    return 'FieldsusageField[name=$name, id=$id, type=$type, ]';
  }

  FieldsusageField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    id = json['id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'type': type
     };
  }

  static List<FieldsusageField> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageField>.empty(growable: true) : json.map((value) => FieldsusageField.fromJson(value)).toList();
  }

  static Map<String, FieldsusageField> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageField>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageField.fromJson(value));
    }
    return map;
  }
}

