part of swagger.api;

class AppsappIdeventsOwner {
  /* User full name. */
  String? name;
/* User Id. */
  String? id;
/* User email. */
  String? email;
/* User Name as updated in user properties. Optional, appears if not the same as user email. */
  String? userName;

  AppsappIdeventsOwner();

  @override
  String toString() {
    return 'AppsappIdeventsOwner[name=$name, id=$id, email=$email, userName=$userName, ]';
  }

  AppsappIdeventsOwner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    id = json['id'];
    email = json['email'];
    userName = json['userName'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'email': email,
      'userName': userName
     };
  }

  static List<AppsappIdeventsOwner> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return List<AppsappIdeventsOwner>.empty(growable: true);
    } else {
      return json.map((value) => AppsappIdeventsOwner.fromJson(value)).toList();
    }
  }

  static Map<String, AppsappIdeventsOwner> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, AppsappIdeventsOwner>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppsappIdeventsOwner.fromJson(value));
    }
    return map;
  }
}
