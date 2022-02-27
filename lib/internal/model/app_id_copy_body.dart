part of swagger.api;

class AppIdCopyBody {
  /* The name of the newly copied app */
  String? name;
  /* The description of the newly copied app */
  String? description;

  AppsappIdcopyProperties? properties;

  AppIdCopyBody();

  @override
  String toString() {
    return 'AppIdCopyBody[name=$name, description=$description, properties=$properties, ]';
  }

  AppIdCopyBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
    properties = AppsappIdcopyProperties.fromJson(json['properties']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description,
      'properties': properties
     };
  }

  static List<AppIdCopyBody> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return new List<AppIdCopyBody>.empty(growable: true);
    } else {
      return json.map((value) => new AppIdCopyBody.fromJson(value)).toList();
    }
  }

  static Map<String, AppIdCopyBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AppIdCopyBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppIdCopyBody.fromJson(value));
    }
    return map;
  }
}
