part of swagger.api;

class InlineResponse2004 {
  
  FieldsusageField? field = null;

  FieldsusageUsage? usage = null;

  InlineResponse2004();

  @override
  String toString() {
    return 'InlineResponse2004[field=$field, usage=$usage, ]';
  }

  InlineResponse2004.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    field = new FieldsusageField.fromJson(json['field']);
    usage = new FieldsusageUsage.fromJson(json['usage']);
  }

  Map<String, dynamic> toJson() {
    return {
      'field': field,
      'usage': usage
     };
  }

  static List<InlineResponse2004> listFromJson(List<dynamic>? json) {
    return json == null ? List<InlineResponse2004>.empty(growable: true) : json.map((value) => InlineResponse2004.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2004> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, InlineResponse2004>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = InlineResponse2004.fromJson(value));
    }
    return map;
  }
}
