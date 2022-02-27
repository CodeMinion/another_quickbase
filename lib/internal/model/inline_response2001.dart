part of swagger.api;

class InlineResponse2001 {
  /* The name of the table. */
  String? name = null;
/* The unique identifier (dbid) of the table. */
  String? id = null;
/* The automatically-created table alias for the table. */
  String? alias = null;
/* The description of the table, as configured by an application administrator. */
  String? description = null;
/* The time and date when the table was created, in the ISO 8601 time format YYYY-MM-DDThh:mm:ss.sssZ (in UTC time zone). */
  String? created = null;
/* The time and date when the table schema or data was last updated, in the ISO 8601 time format YYYY-MM-DDThh:mm:ss.sssZ (in UTC time zone). */
  String? updated = null;
/* The incremental Record ID that will be used when the next record is created, as determined when the API call was ran. */
  int? nextRecordId = null;
/* The incremental Field ID that will be used when the next field is created, as determined when the API call was ran. */
  int? nextFieldId = null;
/* The id of the field that is configured for default sorting. */
  int? defaultSortFieldId = null;
/* The configuration of the default sort order on the table. */
  String? defaultSortOrder = null;
  //enum defaultSortOrderEnum {  ASC,  DESC,  };
/* The id of the field that is configured to be the key on this table, which is usually the Quickbase Record ID. */
  int? keyFieldId = null;
/* The builder-configured singular noun of the table. */
  String? singleRecordName = null;
/* The builder-configured plural noun of the table. */
  String? pluralRecordName = null;
/* The size limit for the table. */
  String? sizeLimit = null;
/* The amount of space currently being used by the table. */
  String? spaceUsed = null;
/* The amount of space remaining for use by the table. */
  String? spaceRemaining = null;

  InlineResponse2001();

  @override
  String toString() {
    return 'InlineResponse2001[name=$name, id=$id, alias=$alias, description=$description, created=$created, updated=$updated, nextRecordId=$nextRecordId, nextFieldId=$nextFieldId, defaultSortFieldId=$defaultSortFieldId, defaultSortOrder=$defaultSortOrder, keyFieldId=$keyFieldId, singleRecordName=$singleRecordName, pluralRecordName=$pluralRecordName, sizeLimit=$sizeLimit, spaceUsed=$spaceUsed, spaceRemaining=$spaceRemaining, ]';
  }

  InlineResponse2001.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    id = json['id'];
    alias = json['alias'];
    description = json['description'];
    created = json['created'];
    updated = json['updated'];
    nextRecordId = json['nextRecordId'];
    nextFieldId = json['nextFieldId'];
    defaultSortFieldId = json['defaultSortFieldId'];
    defaultSortOrder = json['defaultSortOrder'];
    keyFieldId = json['keyFieldId'];
    singleRecordName = json['singleRecordName'];
    pluralRecordName = json['pluralRecordName'];
    sizeLimit = json['sizeLimit'];
    spaceUsed = json['spaceUsed'];
    spaceRemaining = json['spaceRemaining'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'alias': alias,
      'description': description,
      'created': created,
      'updated': updated,
      'nextRecordId': nextRecordId,
      'nextFieldId': nextFieldId,
      'defaultSortFieldId': defaultSortFieldId,
      'defaultSortOrder': defaultSortOrder,
      'keyFieldId': keyFieldId,
      'singleRecordName': singleRecordName,
      'pluralRecordName': pluralRecordName,
      'sizeLimit': sizeLimit,
      'spaceUsed': spaceUsed,
      'spaceRemaining': spaceRemaining
     };
  }

  static List<InlineResponse2001> listFromJson(List<dynamic>? json) {
    return json == null ? List<InlineResponse2001>.empty(growable: true) : json.map((value) => InlineResponse2001.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2001> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, InlineResponse2001>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse2001.fromJson(value));
    }
    return map;
  }
}
