part of swagger.api;

class AppsappIdcopyProperties {
  /* Whether to add the user token used to make this request to the new app */
  bool? assignUserToken;
/* If keepData is true, whether to copy the file attachments as well. If keepData is false, this property is ignored */
  bool? excludeFiles;
/* Whether to copy the app's data along with the schema */
  bool? keepData;
/* If true, users will be copied along with their assigned roles. If false, users and roles will be copied but roles will not be assigned */
  bool? usersAndRoles;

  AppsappIdcopyProperties();

  @override
  String toString() {
    return 'AppsappIdcopyProperties[assignUserToken=$assignUserToken, excludeFiles=$excludeFiles, keepData=$keepData, usersAndRoles=$usersAndRoles, ]';
  }

  AppsappIdcopyProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    assignUserToken = json['assignUserToken'];
    excludeFiles = json['excludeFiles'];
    keepData = json['keepData'];
    usersAndRoles = json['usersAndRoles'];
  }

  Map<String, dynamic> toJson() {
    return {
      'assignUserToken': assignUserToken,
      'excludeFiles': excludeFiles,
      'keepData': keepData,
      'usersAndRoles': usersAndRoles
     };
  }

  static List<AppsappIdcopyProperties> listFromJson(List<dynamic>? json) {
    if (json == null) {
      return List<AppsappIdcopyProperties>.empty(growable: true);
    } else {
      return json.map((value) => new AppsappIdcopyProperties.fromJson(value)).toList();
    }
  }

  static Map<String, AppsappIdcopyProperties> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, AppsappIdcopyProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AppsappIdcopyProperties.fromJson(value));
    }
    return map;
  }
}
