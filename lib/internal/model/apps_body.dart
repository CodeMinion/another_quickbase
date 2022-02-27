part of swagger.api;

class AppsBody {
  /* Set to true if you would like to assign the app to the user token you used to create the application. The default is false. */
  bool? assignToken;

/* The app variables. See [About Application Variables](https://help.quickbase.com/user-assistance/variables.html) */
  List<AppsVariables> variables = [];

/* The app name. You are allowed to create multiple apps with the same name, in the same realm, because they will have different dbid values. We urge you to be careful about doing this. */
  String? name;

/* The description for the app. If this property is left out, the app description will be blank. */
  String? description;

  AppsBody();

  @override
  String toString() {
    return 'AppsBody[assignToken=$assignToken, variables=$variables, name=$name, description=$description, ]';
  }

  AppsBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignToken = json['assignToken'];
    variables = AppsVariables.listFromJson(json['variables']);
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'assignToken': assignToken,
      'variables': variables,
      'name': name,
      'description': description
    };
  }

  static List<AppsBody> listFromJson(List<dynamic> json) {
    if (json == null) {
      return List<AppsBody>.empty(growable: true);
    } else {
      return json.map((value) => AppsBody.fromJson(value)).toList();
    }
  }

  static Map<String, AppsBody> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, AppsBody>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AppsBody.fromJson(value));
    }
    return map;
  }
}
