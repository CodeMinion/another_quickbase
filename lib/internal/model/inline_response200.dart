part of swagger.api;

class InlineResponse200 {
  /* Indication of whether current event is active. */
  bool? isActive = null;
/* Type of an event. */
  String? type = null;
  //enum typeEnum {  webhook,  qb-action,  email-notification,  subscription,  reminder,  automation,  };
/* The name of the event. This property is not returned for automations. */
  String? name = null;
/* The url to automation that can be accessed from the browser. Only returned for automations. */
  String? url = null;

  AppsappIdeventsOwner? owner = null;
/* The unique identifier of the table to which event belongs to. */
  String? tableId = null;

  InlineResponse200();

  @override
  String toString() {
    return 'InlineResponse200[isActive=$isActive, type=$type, name=$name, url=$url, owner=$owner, tableId=$tableId, ]';
  }

  InlineResponse200.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    isActive = json['isActive'];
    type = json['type'];
    name = json['name'];
    url = json['url'];
    owner = new AppsappIdeventsOwner.fromJson(json['owner']);
    tableId = json['tableId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'isActive': isActive,
      'type': type,
      'name': name,
      'url': url,
      'owner': owner,
      'tableId': tableId
     };
  }

  static List<InlineResponse200> listFromJson(List<dynamic>? json) {
    return json == null ? List<InlineResponse200>.empty(growable: true) : json.map((value) => InlineResponse200.fromJson(value)).toList();
  }

  static Map<String, InlineResponse200> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, InlineResponse200>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse200.fromJson(value));
    }
    return map;
  }
}
