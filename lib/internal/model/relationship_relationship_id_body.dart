part of swagger.api;

class RelationshipRelationshipIdBody {
  /* An array of objects, each representing a configuration of one field from the child table, that will become summary fields on the parent table. When you specify the 'COUNT' accumulation type, you have to specify 0 as the summaryFid (or not set it in the request). 'DISTINCT-COUNT' requires that summaryFid be set to an actual fid. */
  List<TablestableIdrelationshipSummaryFields> summaryFields = [];
/* An array of field ids on the parent table that will become lookup fields on the child table. */
  List<int> lookupFieldIds = [];

  RelationshipRelationshipIdBody();

  @override
  String toString() {
    return 'RelationshipRelationshipIdBody[summaryFields=$summaryFields, lookupFieldIds=$lookupFieldIds, ]';
  }

  RelationshipRelationshipIdBody.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    summaryFields = TablestableIdrelationshipSummaryFields.listFromJson(json['summaryFields']);
    lookupFieldIds = (json['lookupFieldIds'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'summaryFields': summaryFields,
      'lookupFieldIds': lookupFieldIds
     };
  }

  static List<RelationshipRelationshipIdBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<RelationshipRelationshipIdBody>.empty(growable: true) : json.map((value) => RelationshipRelationshipIdBody.fromJson(value)).toList();
  }

  static Map<String, RelationshipRelationshipIdBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, RelationshipRelationshipIdBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = RelationshipRelationshipIdBody.fromJson(value));
    }
    return map;
  }
}
