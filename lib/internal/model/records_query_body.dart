part of swagger.api;

class RecordsQueryBody {
  
  RecordsqueryOptions? options = null;
/* The filter, using the Quickbase query language, which determines the records to return. If this parameter is omitted, the query will return all records. */
  String? where = null;
/* An array that contains the fields to group the records by. */
  List<RecordsqueryGroupBy> groupBy = [];
/* By default, queries will be sorted by the given sort fields or the default sort if the query does not provide any. Set to false to avoid sorting when the order of the data returned is not important. Returning data without sorting can improve performance. */
  List<Map<String, dynamic>>? sortBy = null;
/* An array of field ids for the fields that should be returned in the response. If empty, the default columns on the table will be returned. */
  List<int>? select = null;
/* The table identifier. */
  String? from = null;

  RecordsQueryBody();

  @override
  String toString() {
    return 'RecordsQueryBody[options=$options, where=$where, groupBy=$groupBy, sortBy=$sortBy, select=$select, from=$from, ]';
  }

  RecordsQueryBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    options = new RecordsqueryOptions.fromJson(json['options']);
    where = json['where'];
    groupBy = RecordsqueryGroupBy.listFromJson(json['groupBy']);
    sortBy = json['sortBy'];
    select = json['select'];
    from = json['from'];
  }

  Map<String, dynamic> toJson() {
    return {
      'options': options,
      'where': where,
      'groupBy': groupBy,
      'sortBy': sortBy,
      'select': select,
      'from': from
     };
  }

  static List<RecordsQueryBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<RecordsQueryBody>.empty(growable: true) : json.map((value) => RecordsQueryBody.fromJson(value)).toList();
  }

  static Map<String, RecordsQueryBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, RecordsQueryBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = RecordsQueryBody.fromJson(value));
    }
    return map;
  }
}
