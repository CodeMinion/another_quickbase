part of swagger.api;

class FieldsusageUsage {
  
  FieldsusageUsageDefaultReports? defaultReports = null;

  FieldsusageUsageNotifications? notifications = null;

  FieldsusageUsageReminders? reminders = null;

  FieldsusageUsageForms? forms = null;

  FieldsusageUsageActions? actions = null;

  FieldsusageUsagePersonalReports? personalReports = null;

  FieldsusageUsageRoles? roles = null;

  FieldsusageUsageReports? reports = null;

  FieldsusageUsageFields? fields = null;

  FieldsusageUsageRelationships? relationships = null;

  FieldsusageUsageWebhooks? webhooks = null;

  FieldsusageUsageAppHomePages? appHomePages = null;

  FieldsusageUsageExactForms? exactForms = null;

  FieldsusageUsage();

  @override
  String toString() {
    return 'FieldsusageUsage[defaultReports=$defaultReports, notifications=$notifications, reminders=$reminders, forms=$forms, actions=$actions, personalReports=$personalReports, roles=$roles, reports=$reports, fields=$fields, relationships=$relationships, webhooks=$webhooks, appHomePages=$appHomePages, exactForms=$exactForms, ]';
  }

  FieldsusageUsage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    defaultReports = new FieldsusageUsageDefaultReports.fromJson(json['defaultReports']);
    notifications = new FieldsusageUsageNotifications.fromJson(json['notifications']);
    reminders = new FieldsusageUsageReminders.fromJson(json['reminders']);
    forms = new FieldsusageUsageForms.fromJson(json['forms']);
    actions = new FieldsusageUsageActions.fromJson(json['actions']);
    personalReports = new FieldsusageUsagePersonalReports.fromJson(json['personalReports']);
    roles = new FieldsusageUsageRoles.fromJson(json['roles']);
    reports = new FieldsusageUsageReports.fromJson(json['reports']);
    fields = new FieldsusageUsageFields.fromJson(json['fields']);
    relationships = new FieldsusageUsageRelationships.fromJson(json['relationships']);
    webhooks = new FieldsusageUsageWebhooks.fromJson(json['webhooks']);
    appHomePages = new FieldsusageUsageAppHomePages.fromJson(json['appHomePages']);
    exactForms = new FieldsusageUsageExactForms.fromJson(json['exactForms']);
  }

  Map<String, dynamic> toJson() {
    return {
      'defaultReports': defaultReports,
      'notifications': notifications,
      'reminders': reminders,
      'forms': forms,
      'actions': actions,
      'personalReports': personalReports,
      'roles': roles,
      'reports': reports,
      'fields': fields,
      'relationships': relationships,
      'webhooks': webhooks,
      'appHomePages': appHomePages,
      'exactForms': exactForms
     };
  }

  static List<FieldsusageUsage> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsusageUsage>.empty(growable: true) : json.map((value) => FieldsusageUsage.fromJson(value)).toList();
  }

  static Map<String, FieldsusageUsage> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsusageUsage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsusageUsage.fromJson(value));
    }
    return map;
  }
}
