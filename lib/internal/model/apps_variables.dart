part of swagger.api;

class AppsVariables {
  /* The name for the variable. */
  String? name;
/* The value for the variable. */
  String? value ;

  AppsVariables();

  @override
  String toString() {
    return 'AppsVariables[name=$name, value=$value, ]';
  }

  AppsVariables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'value': value
     };
  }

  static List<AppsVariables> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return List<AppsVariables>.empty(growable: true);
    } else {
      return json.map((value) => AppsVariables.fromJson(value)).toList();
    }
  }

  static Map<String, AppsVariables> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, AppsVariables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppsVariables.fromJson(value));
    }
    return map;
  }
}
