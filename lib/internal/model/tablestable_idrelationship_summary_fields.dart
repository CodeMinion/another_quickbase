part of swagger.api;

class TablestableIdrelationshipSummaryFields {
  /* The field id to summarize. */
  double? summaryFid = null;
/* The label for the summary field. */
  String? label = null;
/* The accumulation type for the summary field. */
  String? accumulationType = null;
  //enum accumulationTypeEnum {  AVG,  SUM,  MAX,  MIN,  STD-DEV,  COUNT,  COMBINED-TEXT,  DISTINCT-COUNT,  };
/* The filter, using the Quickbase query language, which determines the records to return. */
  String? where = null;

  TablestableIdrelationshipSummaryFields();

  @override
  String toString() {
    return 'TablestableIdrelationshipSummaryFields[summaryFid=$summaryFid, label=$label, accumulationType=$accumulationType, where=$where, ]';
  }

  TablestableIdrelationshipSummaryFields.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    summaryFid = json['summaryFid'];
    label = json['label'];
    accumulationType = json['accumulationType'];
    where = json['where'];
  }

  Map<String, dynamic> toJson() {
    return {
      'summaryFid': summaryFid,
      'label': label,
      'accumulationType': accumulationType,
      'where': where
     };
  }

  static List<TablestableIdrelationshipSummaryFields> listFromJson(List<dynamic>? json) {
    return json == null ? List<TablestableIdrelationshipSummaryFields>.empty(growable: true) : json.map((value) => TablestableIdrelationshipSummaryFields.fromJson(value)).toList();
  }

  static Map<String, TablestableIdrelationshipSummaryFields> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, TablestableIdrelationshipSummaryFields>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TablestableIdrelationshipSummaryFields.fromJson(value));
    }
    return map;
  }
}
