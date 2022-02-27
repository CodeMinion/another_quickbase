part of swagger.api;

class AppsAppIdBody1 {
  /* To confirm application deletion we ask for application name. */
  String? name;

  AppsAppIdBody1();

  @override
  String toString() {
    return 'AppsAppIdBody1[name=$name, ]';
  }

  AppsAppIdBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name
     };
  }

  static List<AppsAppIdBody1> listFromJson(List<dynamic> json) {
    if (json == null) {
      return new List<AppsAppIdBody1>.empty(growable: true);
    } else {
      return json.map((value) => AppsAppIdBody1.fromJson(value)).toList();
    }
  }

  static Map<String, AppsAppIdBody1> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = Map<String, AppsAppIdBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppsAppIdBody1.fromJson(value));
    }
    return map;
  }
}
