part of swagger.api;

class TableIdRelationshipBody {
  /* Array of summary field objects which will turn into summary fields in the parent table. When you specify the 'COUNT' accumulation type, you have to specify 0 as the summaryFid (or not set it in the request). 'DISTINCT-COUNT' requires that summaryFid be set to an actual fid. */
  List<TablestableIdrelationshipSummaryFields> summaryFields = [];
/* Array of field ids in the parent table that will become lookup fields in the child table. */
  List<int> lookupFieldIds = [];
/* The parent table id for the relationship. */
  String? parentTableId = null;

  TablestableIdrelationshipForeignKeyField? foreignKeyField = null;

  TableIdRelationshipBody();

  @override
  String toString() {
    return 'TableIdRelationshipBody[summaryFields=$summaryFields, lookupFieldIds=$lookupFieldIds, parentTableId=$parentTableId, foreignKeyField=$foreignKeyField, ]';
  }

  TableIdRelationshipBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    summaryFields = TablestableIdrelationshipSummaryFields.listFromJson(json['summaryFields']);
    lookupFieldIds = (json['lookupFieldIds'] as List).map((item) => item as int).toList();
    parentTableId = json['parentTableId'];
    foreignKeyField = new TablestableIdrelationshipForeignKeyField.fromJson(json['foreignKeyField']);
  }

  Map<String, dynamic> toJson() {
    return {
      'summaryFields': summaryFields,
      'lookupFieldIds': lookupFieldIds,
      'parentTableId': parentTableId,
      'foreignKeyField': foreignKeyField
     };
  }

  static List<TableIdRelationshipBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<TableIdRelationshipBody>.empty(growable: true) : json.map((value) => TableIdRelationshipBody.fromJson(value)).toList();
  }

  static Map<String, TableIdRelationshipBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, TableIdRelationshipBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = TableIdRelationshipBody.fromJson(value));
    }
    return map;
  }
}
