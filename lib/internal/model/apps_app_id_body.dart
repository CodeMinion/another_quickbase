part of swagger.api;

class AppsAppIdBody {
  /* The app variables. See [About Application Variables](https://help.quickbase.com/user-assistance/variables.html) */
  List<AppsVariables> variables = [];
/* The name for the app. */
  String? name;
/* The description for the app. */
  String? description;

  AppsAppIdBody();

  @override
  String toString() {
    return 'AppsAppIdBody[variables=$variables, name=$name, description=$description, ]';
  }

  AppsAppIdBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    variables = AppsVariables.listFromJson(json['variables']);
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'variables': variables,
      'name': name,
      'description': description
     };
  }

  static List<AppsAppIdBody> listFromJson(List<dynamic> json) {
    if (json == null) {
      return List<AppsAppIdBody>.empty(growable: true);
    } else {
      return json.map((value) => new AppsAppIdBody.fromJson(value)).toList();
    }
  }

  static Map<String, AppsAppIdBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AppsAppIdBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppsAppIdBody.fromJson(value));
    }
    return map;
  }
}
