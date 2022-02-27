part of swagger.api;

class FieldsBody {
  /* Indicates if the field is being tracked as part of Quickbase Audit Logs. You can only set this property to \"true\" if the app has audit logs enabled. See Enable data change logs under [Quickbase Audit Logs](https://help.quickbase.com/user-assistance/audit_logs.html). */
  bool? audited;

/* The configured help text shown to users within the product. */
  String? fieldHelp;

/* Indicates if the field is configured to display in bold in the product. */
  bool? bold;

  FieldsProperties1? properties;

/* Indicates if the field is marked as a default in reports. */
  bool? appearsByDefault;

/* The [field types](https://help.quickbase.com/user-assistance/field_types.html), click on any of the field type links for more info. */
  String? fieldType;

  //enum fieldTypeEnum {  text,  text-multiple-choice,  text-multi-line,  rich-text,  numeric,  currency,  rating,  percent,  multitext,  email,  url,  duration,  date,  datetime,  timestamp,  timeofday,  checkbox,  user,  multiuser,  address,  phone,  file,  };
/* Field Permissions for different roles. */
  List<FieldsPermissions>? permissions;

/* Whether the field you are adding should appear on forms. */
  bool? addToForms;

/* The label (name) of the field. */
  String? label;

/* Indicates if the field is marked as searchable. */
  bool? findEnabled;

/* Indicates if the field is configured to not wrap when displayed in the product. */
  bool? noWrap;

  FieldsBody();

  @override
  String toString() {
    return 'FieldsBody[audited=$audited, fieldHelp=$fieldHelp, bold=$bold, properties=$properties, appearsByDefault=$appearsByDefault, fieldType=$fieldType, permissions=$permissions, addToForms=$addToForms, label=$label, findEnabled=$findEnabled, noWrap=$noWrap, ]';
  }

  FieldsBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    audited = json['audited'];
    fieldHelp = json['fieldHelp'];
    bold = json['bold'];
    properties = FieldsProperties1.fromJson(json['properties']);
    appearsByDefault = json['appearsByDefault'];
    fieldType = json['fieldType'];
    permissions = FieldsPermissions.listFromJson(json['permissions']);
    addToForms = json['addToForms'];
    label = json['label'];
    findEnabled = json['findEnabled'];
    noWrap = json['noWrap'];
  }

  Map<String, dynamic> toJson() {
    return {
      'audited': audited,
      'fieldHelp': fieldHelp,
      'bold': bold,
      'properties': properties,
      'appearsByDefault': appearsByDefault,
      'fieldType': fieldType,
      'permissions': permissions,
      'addToForms': addToForms,
      'label': label,
      'findEnabled': findEnabled,
      'noWrap': noWrap
    };
  }

  static List<FieldsBody> listFromJson(List<dynamic>? json) {
    return json == null
        ? List<FieldsBody>.empty(growable: true)
        : json.map((value) => FieldsBody.fromJson(value)).toList();
  }

  static Map<String, FieldsBody> mapFromJson(
      Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsBody>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = FieldsBody.fromJson(value));
    }
    return map;
  }
}
