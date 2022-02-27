part of swagger.api;

class FieldsFieldIdBody {
  /* Indicates if the field is being tracked as part of Quickbase Audit Logs. You can only set this property to \"true\" if the app has audit logs enabled. See Enable data change logs under [Quickbase Audit Logs](https://help.quickbase.com/user-assistance/audit_logs.html). */
  bool? audited;
/* The configured help text shown to users within the product. */
  String? fieldHelp;
/* Indicates if the field is configured to display in bold in the product. */
  bool? bold;
/* Indicates if the field is required (i.e. if every record must have a non-null value in this field). If you attempt to change a field from not-required to required, and the table currently contains records that have null values in that field, you will get an error indicating that there are null values of the field. In this case you need to find and update those records with null values of the field before changing the field to required. */
  bool? required;

  FieldsfieldIdProperties? properties;
/* Indicates if the field is marked as a default in reports. */
  bool? appearsByDefault;
/* Indicates if every record in the table must contain a unique value of this field. If you attempt to change a field from not-unique to unique, and the table currently contains records with the same value of this field, you will get an error. In this case you need to find and update those records with duplicate values of the field before changing the field to unique. */
  bool? unique;
/* Field Permissions for different roles. */
  List<FieldsPermissions> permissions = [];
/* Whether the field you are adding should appear on forms. */
  bool? addToForms;
/* The label (name) of the field. */
  String? label;
/* Indicates if the field is marked as searchable. */
  bool? findEnabled;
/* Indicates if the field is configured to not wrap when displayed in the product. */
  bool? noWrap;

  FieldsFieldIdBody();

  @override
  String toString() {
    return 'FieldsFieldIdBody[audited=$audited, fieldHelp=$fieldHelp, bold=$bold, required=$required, properties=$properties, appearsByDefault=$appearsByDefault, unique=$unique, permissions=$permissions, addToForms=$addToForms, label=$label, findEnabled=$findEnabled, noWrap=$noWrap, ]';
  }

  FieldsFieldIdBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    audited = json['audited'];
    fieldHelp = json['fieldHelp'];
    bold = json['bold'];
    required = json['required'];
    properties = new FieldsfieldIdProperties.fromJson(json['properties']);
    appearsByDefault = json['appearsByDefault'];
    unique = json['unique'];
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
      'required': required,
      'properties': properties,
      'appearsByDefault': appearsByDefault,
      'unique': unique,
      'permissions': permissions,
      'addToForms': addToForms,
      'label': label,
      'findEnabled': findEnabled,
      'noWrap': noWrap
     };
  }

  static List<FieldsFieldIdBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsFieldIdBody>.empty(growable: true) : json.map((value) => FieldsFieldIdBody.fromJson(value)).toList();
  }

  static Map<String, FieldsFieldIdBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = Map<String, FieldsFieldIdBody>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = FieldsFieldIdBody.fromJson(value));
    }
    return map;
  }
}
