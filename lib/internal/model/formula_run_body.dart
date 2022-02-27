part of swagger.api;

class FormulaRunBody {
  /* The formula to run. This must be a valid Quickbase formula. */
  String? formula = null;
/* The record ID to run the formula against. Only necessary for formulas that are run in the context of a record. For example, the formula User() does not need a record ID. */
  int? rid = null;
/* The unique identifier (dbid) of the table. */
  String? from = null;

  FormulaRunBody();

  @override
  String toString() {
    return 'FormulaRunBody[formula=$formula, rid=$rid, from=$from, ]';
  }

  FormulaRunBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    formula = json['formula'];
    rid = json['rid'];
    from = json['from'];
  }

  Map<String, dynamic> toJson() {
    return {
      'formula': formula,
      'rid': rid,
      'from': from
     };
  }

  static List<FormulaRunBody> listFromJson(List<dynamic>? json) {
    return json == null ? List<FormulaRunBody>.empty(growable: true) : json.map((value) => FormulaRunBody.fromJson(value)).toList();
  }

  static Map<String, FormulaRunBody> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FormulaRunBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FormulaRunBody.fromJson(value));
    }
    return map;
  }
}
