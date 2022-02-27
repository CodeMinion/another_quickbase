part of swagger.api;

class TablesTableIdBody {
  /* The name for the table. */
  String? name = null;
/* The plural noun for records in the table. If this value is not passed the default value is 'Records'. */
  String? pluralRecordName = null;
/* The singular noun for records in the table. If this value is not passed the default value is 'Record'. */
  String? singleRecordName = null;
/* The description for the table. If this value is not passed the default value is blank. */
  String? description = null;

  TablesTableIdBody();

  @override
  String toString() {
    return 'TablesTableIdBody[name=$name, pluralRecordName=$pluralRecordName, singleRecordName=$singleRecordName, description=$description, ]';
  }

  TablesTableIdBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    pluralRecordName = json['pluralRecordName'];
    singleRecordName = json['singleRecordName'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'pluralRecordName': pluralRecordName,
      'singleRecordName': singleRecordName,
      'description': description
     };
  }

  static List<TablesTableIdBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<TablesTableIdBody>.empty(growable: true) : json.map((value) => TablesTableIdBody.fromJson(value)).toList();
  }

  static Map<String, TablesTableIdBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, TablesTableIdBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = TablesTableIdBody.fromJson(value));
    }
    return map;
  }
}
