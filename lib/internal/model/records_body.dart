part of swagger.api;

class RecordsBody {
  /* The table identifier. */
  String? to = null;
/* Record data array, where each record contains key-value mappings of fields to be defined/updated and their values. */
  List<Map<String,dynamic>>? data = null;
/* The merge field id. */
  int? mergeFieldId = null;
/* Specify an array of field ids that will return data for any updates or added record. Record ID (FID 3) is always returned if any field ID is requested. */
  List<int> fieldsToReturn = [];

  RecordsBody();

  @override
  String toString() {
    return 'RecordsBody[to=$to, data=$data, mergeFieldId=$mergeFieldId, fieldsToReturn=$fieldsToReturn, ]';
  }

  RecordsBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    to = json['to'];
    data = json['data'];
    mergeFieldId = json['mergeFieldId'];
    fieldsToReturn = (json['fieldsToReturn'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'to': to,
      'data': data,
      'mergeFieldId': mergeFieldId,
      'fieldsToReturn': fieldsToReturn
     };
  }

  static List<RecordsBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<RecordsBody>.empty(growable: true) : json.map((value) => RecordsBody.fromJson(value)).toList();
  }

  static Map<String, RecordsBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, RecordsBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = RecordsBody.fromJson(value));
    }
    return map;
  }
}
