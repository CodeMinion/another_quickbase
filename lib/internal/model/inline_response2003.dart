part of swagger.api;

class InlineResponse2003 {
  /* The id of the field, unique to this table. */
  int? id = null;
/* The type of field, as described [here](https://help.quickbase.com/user-assistance/field_types.html). */
  String? fieldType = null;
/* For derived fields, this will be 'lookup', 'summary', or 'formula', to indicate the type of derived field.  For non-derived fields, this will be blank. */
  String? mode = null;
/* The label (name) of the field. */
  String? label = null;
/* Indicates if the field is configured to not wrap when displayed in the product. */
  bool? noWrap = null;
/* Indicates if the field is configured to display in bold in the product. */
  bool? bold = null;
/* Indicates if the field is marked required. */
  bool? required = null;
/* Indicates if the field is marked as a default in reports. */
  bool? appearsByDefault = null;
/* Indicates if the field is marked as searchable. */
  bool? findEnabled = null;
/* Indicates if the field is marked unique. */
  bool? unique = null;
/* Indicates if the field data will copy when a user copies the record. */
  bool? doesDataCopy = null;
/* The configured help text shown to users within the product. */
  String? fieldHelp = null;
/* Indicates if the field is being tracked as part of Quickbase Audit Logs. */
  bool? audited = null;

  FieldsProperties? properties = null;
/* Field Permissions for different roles. */
  List<FieldsPermissions> permissions = [];

  InlineResponse2003();

  @override
  String toString() {
    return 'InlineResponse2003[id=$id, fieldType=$fieldType, mode=$mode, label=$label, noWrap=$noWrap, bold=$bold, required=$required, appearsByDefault=$appearsByDefault, findEnabled=$findEnabled, unique=$unique, doesDataCopy=$doesDataCopy, fieldHelp=$fieldHelp, audited=$audited, properties=$properties, permissions=$permissions, ]';
  }

  InlineResponse2003.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    fieldType = json['fieldType'];
    mode = json['mode'];
    label = json['label'];
    noWrap = json['noWrap'];
    bold = json['bold'];
    required = json['required'];
    appearsByDefault = json['appearsByDefault'];
    findEnabled = json['findEnabled'];
    unique = json['unique'];
    doesDataCopy = json['doesDataCopy'];
    fieldHelp = json['fieldHelp'];
    audited = json['audited'];
    properties = new FieldsProperties.fromJson(json['properties']);
    permissions = FieldsPermissions.listFromJson(json['permissions']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'fieldType': fieldType,
      'mode': mode,
      'label': label,
      'noWrap': noWrap,
      'bold': bold,
      'required': required,
      'appearsByDefault': appearsByDefault,
      'findEnabled': findEnabled,
      'unique': unique,
      'doesDataCopy': doesDataCopy,
      'fieldHelp': fieldHelp,
      'audited': audited,
      'properties': properties,
      'permissions': permissions
     };
  }

  static List<InlineResponse2003> listFromJson(List<dynamic>? json) {
    return json == null ? List<InlineResponse2003>.empty(growable: true) : json.map((value) => InlineResponse2003.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, InlineResponse2003>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2003.fromJson(value));
    }
    return map;
  }
}
