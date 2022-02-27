part of swagger.api;

class UsertokenCloneBody {
  /* The new name for the cloned user token. */
  String? name = null;
/* The description for the cloned user token. */
  String? description = null;

  UsertokenCloneBody();

  @override
  String toString() {
    return 'UsertokenCloneBody[name=$name, description=$description, ]';
  }

  UsertokenCloneBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'description': description
     };
  }

  static List<UsertokenCloneBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<UsertokenCloneBody>.empty(growable: true) : json.map((value) => UsertokenCloneBody.fromJson(value)).toList();
  }

  static Map<String, UsertokenCloneBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, UsertokenCloneBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = UsertokenCloneBody.fromJson(value));
    }
    return map;
  }
}
