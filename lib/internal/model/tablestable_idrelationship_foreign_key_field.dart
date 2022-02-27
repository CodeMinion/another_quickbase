part of swagger.api;

class TablestableIdrelationshipForeignKeyField {
  /* The label for the foreign key field. */
  String? label = null;

  TablestableIdrelationshipForeignKeyField();

  @override
  String toString() {
    return 'TablestableIdrelationshipForeignKeyField[label=$label, ]';
  }

  TablestableIdrelationshipForeignKeyField.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label
     };
  }

  static List<TablestableIdrelationshipForeignKeyField> listFromJson(List<dynamic>? json) {
    return json == null ? List<TablestableIdrelationshipForeignKeyField>.empty(growable: true) : json.map((value) =>  TablestableIdrelationshipForeignKeyField.fromJson(value)).toList();
  }

  static Map<String, TablestableIdrelationshipForeignKeyField> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, TablestableIdrelationshipForeignKeyField>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = TablestableIdrelationshipForeignKeyField.fromJson(value));
    }
    return map;
  }
}
