part of swagger.api;

class TablesBody {
  /* The name for the table. */
  String? name = null;
/* The plural noun for records in the table. If this value is not passed the default value is 'Records'. */
  String? pluralRecordName = null;
/* The singular noun for records in the table. If this value is not passed the default value is 'Record'. */
  String? singleRecordName = null;
/* The description for the table. If this value is not passed the default value is blank. */
  String? description = null;

  TablesBody();

  @override
  String toString() {
    return 'TablesBody[name=$name, pluralRecordName=$pluralRecordName, singleRecordName=$singleRecordName, description=$description, ]';
  }

  TablesBody.fromJson(Map<String, dynamic> json) {
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

  static List<TablesBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<TablesBody>.empty(growable: true) : json.map((value) => TablesBody.fromJson(value)).toList();
  }

  static Map<String, TablesBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, TablesBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = TablesBody.fromJson(value));
    }
    return map;
  }
}
