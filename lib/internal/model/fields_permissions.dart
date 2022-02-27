part of swagger.api;

class FieldsPermissions {
  /* The role associated with a given permission for the field */
  String? role;
/* The permission given to the role for this field */
  String? permissionType;
/* The Id of the given role */
  int? roleId;

  FieldsPermissions();

  @override
  String toString() {
    return 'FieldsPermissions[role=$role, permissionType=$permissionType, roleId=$roleId, ]';
  }

  FieldsPermissions.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    role = json['role'];
    permissionType = json['permissionType'];
    roleId = json['roleId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'role': role,
      'permissionType': permissionType,
      'roleId': roleId
     };
  }

  static List<FieldsPermissions> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsPermissions>.empty(growable: true) : json.map((value) => FieldsPermissions.fromJson(value)).toList();
  }

  static Map<String, FieldsPermissions> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = Map<String, FieldsPermissions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = FieldsPermissions.fromJson(value));
    }
    return map;
  }
}
