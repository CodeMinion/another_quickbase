part of swagger.api;

class RecordsqueryOptions {
  /* The number of records to skip. */
  int? skip = null;
/* Whether to run the query against a date time field with respect to the application's local time. The query is run with UTC time by default. */
  bool? compareWithAppLocalTime = null;
/* The maximum number of records to display. */
  int? top = null;

  RecordsqueryOptions();

  @override
  String toString() {
    return 'RecordsqueryOptions[skip=$skip, compareWithAppLocalTime=$compareWithAppLocalTime, top=$top, ]';
  }

  RecordsqueryOptions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    skip = json['skip'];
    compareWithAppLocalTime = json['compareWithAppLocalTime'];
    top = json['top'];
  }

  Map<String, dynamic> toJson() {
    return {
      'skip': skip,
      'compareWithAppLocalTime': compareWithAppLocalTime,
      'top': top
     };
  }

  static List<RecordsqueryOptions> listFromJson(List<dynamic>? json) {
    return json == null ? List<RecordsqueryOptions>.empty(growable: true) : json.map((value) => RecordsqueryOptions.fromJson(value)).toList();
  }

  static Map<String, RecordsqueryOptions> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, RecordsqueryOptions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = RecordsqueryOptions.fromJson(value));
    }
    return map;
  }
}
