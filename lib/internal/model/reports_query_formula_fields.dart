part of swagger.api;

class ReportsQueryFormulaFields {
  /* Formula field identifier. */
  int? id = null;
/* Formula field label. */
  String? label = null;
/* Resulting formula value type. */
  String? fieldType = null;
  //enum fieldTypeEnum {  rich-text,  text,  numeric,  currency,  percent,  rating,  date,  timestamp,  timeofday,  duration,  checkbox,  phone,  email,  user,  multiuser,  url,  };
/* Formula text. */
  String? formula = null;
/* For numeric formula the number precision. */
  int? decimalPrecision = null;

  ReportsQueryFormulaFields();

  @override
  String toString() {
    return 'ReportsQueryFormulaFields[id=$id, label=$label, fieldType=$fieldType, formula=$formula, decimalPrecision=$decimalPrecision, ]';
  }

  ReportsQueryFormulaFields.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    label = json['label'];
    fieldType = json['fieldType'];
    formula = json['formula'];
    decimalPrecision = json['decimalPrecision'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'label': label,
      'fieldType': fieldType,
      'formula': formula,
      'decimalPrecision': decimalPrecision
     };
  }

  static List<ReportsQueryFormulaFields> listFromJson(List<dynamic>? json) {
    return json == null ? List<ReportsQueryFormulaFields>.empty(growable: true) : json.map((value) =>  ReportsQueryFormulaFields.fromJson(value)).toList();
  }

  static Map<String, ReportsQueryFormulaFields> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, ReportsQueryFormulaFields>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] =  ReportsQueryFormulaFields.fromJson(value));
    }
    return map;
  }
}
