part of swagger.api;

class InlineResponse2002 {
  /* The identifier of the report, unique to the table. */
  String? id = null;
/* The configured name of the report. */
  String? name = null;
/* The type of report in Quickbase (e.g., chart). */
  String? type = null;
/* The configured description of a report. */
  String? description = null;
/* Optional, showed only for personal reports. The user ID of report owner. */
  int? ownerId = null;

  ReportsQuery? query = null;
/* A list of properties specific to the report type. To see a detailed description of the properties for each report type, See [Report Types.](../reportTypes) */
  //Object? properties = null;
/* The instant at which a report was last used. */
  String? usedLast = null;
/* The number of times a report has been used. */
  int? usedCount = null;

  InlineResponse2002();

  @override
  String toString() {
    return 'InlineResponse2002[id=$id, name=$name, type=$type, description=$description, ownerId=$ownerId, query=$query, properties=, usedLast=$usedLast, usedCount=$usedCount, ]';
  }

  InlineResponse2002.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    type = json['type'];
    description = json['description'];
    ownerId = json['ownerId'];
    query = new ReportsQuery.fromJson(json['query']);
    //properties = new Object.fromJson(json['properties']);
    usedLast = json['usedLast'];
    usedCount = json['usedCount'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'description': description,
      'ownerId': ownerId,
      'query': query,
      //'properties': properties,
      'usedLast': usedLast,
      'usedCount': usedCount
     };
  }

  static List<InlineResponse2002> listFromJson(List<dynamic>? json) {
    return json == null ? List<InlineResponse2002>.empty(growable: true) : json.map((value) => InlineResponse2002.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2002> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, InlineResponse2002>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2002.fromJson(value));
    }
    return map;
  }
}
