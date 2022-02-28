import 'package:json_annotation/json_annotation.dart';

part 'another_quickbase_models.g.dart';

@JsonSerializable(includeIfNull: false)
class AppIdCopyRequest {
  /* The name of the newly copied app */
  String? name;

  /* The description of the newly copied app */
  String? description;

  AppsappIdcopyProperties? properties;

  AppIdCopyRequest({this.description, this.name, this.properties});

  factory AppIdCopyRequest.fromJson(Map<String, dynamic> json) =>
      _$AppIdCopyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AppIdCopyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AppsappIdcopyProperties {
  /* Whether to add the user token used to make this request to the new app */
  bool? assignUserToken;

/* If keepData is true, whether to copy the file attachments as well. If keepData is false, this property is ignored */
  bool? excludeFiles;

/* Whether to copy the app's data along with the schema */
  bool? keepData;

/* If true, users will be copied along with their assigned roles. If false, users and roles will be copied but roles will not be assigned */
  bool? usersAndRoles;

  AppsappIdcopyProperties(
      {this.assignUserToken,
      this.excludeFiles,
      this.keepData,
      this.usersAndRoles});

  factory AppsappIdcopyProperties.fromJson(Map<String, dynamic> json) =>
      _$AppsappIdcopyPropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$AppsappIdcopyPropertiesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AppResponse {
  final String? name;

  final String? description;

  final String? created;

  final String? updated;

  final String? dateFormat;

  final String? timeZone;

  final String? id;

  final bool? hasEveryoneOnTheInternet;

  final List<Variable>? variables;

  final String? dataClassification;

  AppResponse(
      {this.name,
      this.description,
      this.id,
      this.created,
      this.updated,
      this.dataClassification,
      this.dateFormat,
      this.hasEveryoneOnTheInternet,
      this.timeZone,
      this.variables});

  factory AppResponse.fromJson(Map<String, dynamic> json) =>
      _$AppResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AppResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class Variable {
  final String? name;

  final String? value;

  Variable({this.name, this.value});

  factory Variable.fromJson(Map<String, dynamic> json) =>
      _$VariableFromJson(json);

  Map<String, dynamic> toJson() => _$VariableToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AppUpsertRequest {
  /* The name of the newly copied app */
  String? name;

  /* The description of the newly copied app */
  String? description;

  String? assignToken;
  List<Variable>? variables;

  AppUpsertRequest(
      {this.description, this.name, this.variables, this.assignToken});

  factory AppUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$AppUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AppUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class AppEvent {
  final bool? isActive;

  final AppEventType? type;

  final String? name;

  final String? url;

  final User? owner;

  final String? tableId;

  AppEvent({
    this.name, this.type, this.url, this.isActive, this.owner, this.tableId
  });

  factory AppEvent.fromJson(Map<String, dynamic> json) =>
      _$AppEventFromJson(json);

  Map<String, dynamic> toJson() => _$AppEventToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class User {
  final String? name;

  final String? id;

  final String? email;

  final String? userName;

  User({
    this.name, this.id, this.email, this.userName
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsUpsertRequest {
  /* Indicates if the field is being tracked as part of Quickbase Audit Logs.
  You can only set this property to \"true\" if the app has audit logs enabled. See Enable data change logs under [Quickbase Audit Logs](https://help.quickbase.com/user-assistance/audit_logs.html). */
  bool? audited;

/* The configured help text shown to users within the product. */
  String? fieldHelp;

/* Indicates if the field is configured to display in bold in the product. */
  bool? bold;

  FieldsProperties? properties;

/* Indicates if the field is marked as a default in reports. */
  bool? appearsByDefault;

/* The [field types](https://help.quickbase.com/user-assistance/field_types.html), click on any of the field type links for more info. */
  String? fieldType;

  //enum fieldTypeEnum {  text,  text-multiple-choice,  text-multi-line,  rich-text,  numeric,  currency,  rating,  percent,  multitext,  email,  url,  duration,  date,  datetime,  timestamp,  timeofday,  checkbox,  user,  multiuser,  address,  phone,  file,  };
/* Field Permissions for different roles. */
  List<FieldsPermissions>? permissions;

/* Whether the field you are adding should appear on forms. */
  bool? addToForms;

/* The label (name) of the field. */
  String? label;

/* Indicates if the field is marked as searchable. */
  bool? findEnabled;

/* Indicates if the field is configured to not wrap when displayed in the product. */
  bool? noWrap;

  FieldsUpsertRequest({
    this.properties, this.permissions, this.label, this.addToForms, this.appearsByDefault,
    this.audited, this.bold, this.fieldHelp, this.fieldType, this.findEnabled, this.noWrap
  });

  factory FieldsUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$FieldsUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FieldsProperties {
  /* The comments entered on the field properties by an administrator. */
  String? comments;
/* Whether this field totals in reports within the product. */
  bool? doesTotal;
/* Whether the link field will auto save. */
  bool? autoSave;
/* Default user id value. */
  int? defaultValueLuid;
/* Whether phone numbers should be in E.164 standard international format */
  bool? useI18NFormat;
/* The maximum number of versions configured for a file attachment. */
  int? maxVersions;
  // range from 1 to //
/* The format to display time. */
  int? format;
/* Whether the field should carry its multiple choice fields when copied. */
  bool? carryChoices;
/* The maximum number of characters allowed for entry in Quickbase for this field. */
  int? maxLength;
/* The configured text value that replaces the URL that users see within the product. */
  String? linkText;
/* The id of the parent composite field, when applicable. */
  int? parentFieldId;
/* Indicates whether to display the timezone within the product. */
  bool? displayTimezone;
/* Indicates if users can add new choices to a selection list. */
  bool? allowNewChoices;
/* Indicates if the field value is defaulted today for new records. */
  bool? defaultToday;
/* The units label. */
  String? units;
/* The id of the source field. */
  int? sourceFieldId;
/* Whether this field averages in reports within the product. */
  bool? doesAverage;
/* The formula of the field as configured in Quickbase. */
  String? formula;
/* The number of decimal places displayed in the product for this field. */
  int? decimalPlaces;
/* Controls the default country shown on international phone widgets on forms. Country code should be entered in the ISO 3166-1 alpha-2 format. */
  String? defaultCountryCode;
/* How to display months. */
  String? displayMonth;
/* Indicates if the user can see other versions, aside from the most recent, of a file attachment within the product. */
  bool? seeVersions;
/* The number of lines shown in Quickbase for this text field. */
  int? numLines;
/* The user default type. */
  String? defaultKind;
/* How the email is displayed. */
  String? displayEmail;
/* An alternate user friendly text that can be used to display a link in the browser. */
  String? coverText;
/* The current symbol used when displaying field values within the product. */
  String? currencySymbol;
/* The id of the target field. */
  int? targetFieldId;
/* The configured option for how users display within the product. */
  String? displayUser;
/* Whether a blank value is treated the same as 0 in calculations within the product. */
  bool? blankIsZero;
/* Whether an exact match is required for a report link. */
  bool? exact;
/* Default email domain. */
  String? defaultDomain;
/* The default value configured for a field when a new record is added. */
  String? defaultValue;
/* Don't show the URL protocol when showing the URL. */
  bool? abbreviate;
/* The format used for displaying numeric values in the product (decimal, separators, digit group). */
  int? numberFormat;
/* The field's target table name. */
  String? targetTableName;
/* The link text, if empty, the url will be used as link text. */
  String? appearsAs;
/* The field's html input width in the product. */
  int? width;
/* The currency format used when displaying field values within the product. */
  String? currencyFormat;
  //enum currencyFormatEnum {  left,  right,  middle,  };
/* Indicates whether images will display for file attachments on forms and reports within the product. */
  bool? displayImages;
/* Indicates whether to display the day of the week within the product. */
  bool? displayDayOfWeek;
/* The number of digits before commas display in the product, when applicable. */
  int? commaStart;
/* An array of entries that exist for a field that offers choices to the user. Note that these choices refer to the valid values of any records added in the future. You are allowed to remove values from the list of choices even if there are existing records with those values in this field. They will be displayed in red when users look at the data in the browser but there is no other effect. While updating a field with this property, the old choices are removed and replaced by the new choices. */
  List<String>? choices = [];
/* The id of the target table. */
  String? targetTableId;
/* Whether to display time as relative. */
  bool? displayRelative;
/* An array of the fields that make up a composite field (e.g., address). */
  //List? compositeFields;
/* Indicates whether to display the time, in addition to the date. */
  bool? displayTime;
/* Version modes for files. Keep all versions vs keep last version. */
  String? versionMode;
  //enum versionModeEnum {  keepallversions,  keeplastversions,  };
/* The id of the field that is used to snapshot values from, when applicable. */
  int? snapFieldId;
/* Indicates whether or not to display time in the 24-hour format within the product. */
  bool? hours24;
/* Whether to sort alphabetically, default sort is by record ID. */
  bool? sortAlpha;
/* Indicates if the listed entries sort as entered vs alphabetically. */
  bool? sortAsGiven;
/* Whether this field has a phone extension. */
  bool? hasExtension;
/* Indicates if the URL should open a new window when a user clicks it within the product. */
  bool? useNewWindow;
/* Whether this field is append only. */
  bool? appendOnly;
/* Indicates if a field that is part of the relationship should be shown as a hyperlink to the parent record within the product. */
  bool? displayAsLink;

  FieldsProperties({
    this.exact, this.abbreviate, this.allowNewChoices, this.appearsAs,
    this.appendOnly, this.autoSave, this.blankIsZero, this.carryChoices,
    this.choices, this.commaStart, this.comments, this.coverText, this.currencyFormat,
    this.currencySymbol, this.decimalPlaces, this.defaultCountryCode, this.defaultDomain,
    this.defaultKind, this.defaultToday, this.defaultValue, this.defaultValueLuid,
    this.displayAsLink, this.displayDayOfWeek, this.displayEmail, this.displayImages,
    this.displayMonth, this.displayRelative, this.displayTime, this.displayTimezone,
    this.displayUser, this.doesAverage, this.doesTotal, this.format, this.formula,
    this.hasExtension, this.hours24, this.linkText, this.maxLength, this.maxVersions,
    this.numberFormat, this.numLines, this.parentFieldId, this.seeVersions,
    this.snapFieldId, this.sortAlpha, this.sortAsGiven, this.sourceFieldId,
    this.targetFieldId, this.targetTableId, this.targetTableName, this.units,
    this.useI18NFormat, this.useNewWindow, this.versionMode, this.width
  });

  factory FieldsProperties.fromJson(Map<String, dynamic> json) =>
      _$FieldsPropertiesFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsPropertiesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FieldsPermissions {
  /* The role associated with a given permission for the field */
  String? role;
/* The permission given to the role for this field */
  String? permissionType;
/* The Id of the given role */
  int? roleId;

  FieldsPermissions({
    this.permissionType, this.role, this.roleId
  });

  factory FieldsPermissions.fromJson(Map<String, dynamic> json) =>
      _$FieldsPermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsPermissionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldResponse {

  final int? id;

  final String? fieldType;

  final String? mode;

  final String? label;

  final bool? noWrap;

  final bool? bold;

  @JsonKey(name: "required")
  final bool? isRequired;

  final bool? appearsByDefault;

  final bool? findEnabled;

  final bool? unique;

  final bool? doesDataCopy;

  final bool? fieldHelp;

  final bool? audited;

  final FieldsProperties? properties;

  final List<FieldsPermissions>? permissions;

  FieldResponse({
    this.noWrap, this.findEnabled, this.fieldType, this.fieldHelp,
    this.bold, this.audited, this.appearsByDefault, this.label, this.permissions,
    this.properties, this.id, this.doesDataCopy, this.isRequired,
    this.mode, this.unique
  });

  factory FieldResponse.fromJson(Map<String, dynamic> json) =>
      _$FieldResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FieldResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsRequest {
  /* List of field ids to be deleted. */
  List<int>? fieldIds = [];

  FieldsRequest({
    this.fieldIds
  });

  factory FieldsRequest.fromJson(Map<String, dynamic> json) =>
      _$FieldsRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FieldsDeletedResponse {

  final List<int>? deletedFieldIds;

  final List<String>? errors;

  FieldsDeletedResponse({
    this.errors, this.deletedFieldIds
  });

  factory FieldsDeletedResponse.fromJson(Map<String, dynamic> json) =>
      _$FieldsDeletedResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsDeletedResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldUsageResponse {

  FieldsUsageField? field;

  FieldsUsageUsage? usage;

  FieldUsageResponse({
    this.field, this.usage
  });

  factory FieldUsageResponse.fromJson(Map<String, dynamic> json) =>
      _$FieldUsageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FieldUsageResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FieldsUsageField {
  /* Field name. */
  String? name;
  /* Field id. */
  int? id;
  /* Field type. */
  String? type;

  FieldsUsageField({
    this.id, this.name, this.type
  });

  factory FieldsUsageField.fromJson(Map<String, dynamic> json) =>
      _$FieldsUsageFieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsUsageFieldToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsUsageUsage {

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

  FieldsUsageUsage({
    this.reminders, this.actions, this.appHomePages, this.defaultReports,
    this.exactForms, this.fields, this.forms, this.notifications, this.personalReports,
    this.relationships, this.reports, this.roles, this.webhooks
  });

  factory FieldsUsageUsage.fromJson(Map<String, dynamic> json) =>
      _$FieldsUsageUsageFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsUsageUsageToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageDefaultReports {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageDefaultReports({
    this.count,
  });

  factory FieldsusageUsageDefaultReports.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageDefaultReportsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageDefaultReportsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageNotifications {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageNotifications({
    this.count,
  });

  factory FieldsusageUsageNotifications.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageNotificationsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageNotificationsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageReminders {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageReminders({
    this.count,
  });

  factory FieldsusageUsageReminders.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageRemindersFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageRemindersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageForms {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageForms({
    this.count,
  });

  factory FieldsusageUsageForms.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageFormsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageFormsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageActions {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageActions({
    this.count,
  });

  factory FieldsusageUsageActions.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageActionsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageActionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsagePersonalReports {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsagePersonalReports({
    this.count,
  });

  factory FieldsusageUsagePersonalReports.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsagePersonalReportsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsagePersonalReportsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageRoles {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageRoles({
    this.count,
  });

  factory FieldsusageUsageRoles.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageRolesFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageRolesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageReports {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageReports({
    this.count,
  });

  factory FieldsusageUsageReports.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageReportsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageReportsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageFields {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageFields({
    this.count,
  });

  factory FieldsusageUsageFields.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageFieldsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageRelationships {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageRelationships({
    this.count,
  });

  factory FieldsusageUsageRelationships.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageRelationshipsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageRelationshipsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageWebhooks {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageWebhooks({
    this.count,
  });

  factory FieldsusageUsageWebhooks.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageWebhooksFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageWebhooksToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageAppHomePages {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageAppHomePages({
    this.count,
  });

  factory FieldsusageUsageAppHomePages.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageAppHomePagesFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageAppHomePagesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FieldsusageUsageExactForms {
  /* the number of times a field has been used for the given item. */
  int? count;

  FieldsusageUsageExactForms({
    this.count,
  });

  factory FieldsusageUsageExactForms.fromJson(Map<String, dynamic> json) =>
      _$FieldsusageUsageExactFormsFromJson(json);

  Map<String, dynamic> toJson() => _$FieldsusageUsageExactFormsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class GetFieldUsagesRequest {

  final int? skip;
  final int? top;

  GetFieldUsagesRequest({
    this.skip, this.top
  });

  factory GetFieldUsagesRequest.fromJson(Map<String, dynamic> json) =>
      _$GetFieldUsagesRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetFieldUsagesRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class DeleteFileResponse {
  final int? versionNumber;

  final String? fileName;

  final String? uploaded;

  final User? creator;

  DeleteFileResponse({
    this.creator, this.fileName, this.uploaded, this.versionNumber
  });

  factory DeleteFileResponse.fromJson(Map<String, dynamic> json) =>
      _$DeleteFileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteFileResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class FormulaRunRequest {
  /* The formula to run. This must be a valid Quickbase formula. */
  String formula;
  /* The record ID to run the formula against. Only necessary
  for formulas that are run in the context of a record. For example,
  the formula User() does not need a record ID. */
  int? rid;
  /* The unique identifier (dbid) of the table. */
  String from;

  FormulaRunRequest({
    required this.formula, required this.from, this.rid
  });

  factory FormulaRunRequest.fromJson(Map<String, dynamic> json) =>
      _$FormulaRunRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FormulaRunRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RecordsDeleteRequest {
  /* The unique identifier of the table. */
  String from;
  /* The filter to delete records. To delete all
  records specify a filter that will include all records,
  for example {3.GT.0} where 3 is the ID of the Record ID field. */
  String where;

  RecordsDeleteRequest({
    required this.from, required this.where
  });

  factory RecordsDeleteRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordsDeleteRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsDeleteRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RecordsQueryRequest {

  RecordsQueryOptions? options;
  /* The filter, using the Quickbase query language,
  which determines the records to return. If this parameter
  is omitted, the query will return all records. */
  String? where;
  /* An array that contains the fields to group the records by. */
  List<RecordsQueryGroupBy>? groupBy = [];
  /* By default, queries will be sorted by the given sort fields or the
  default sort if the query does not provide any. Set to false to avoid sorting
  when the order of the data returned is not important. Returning data without
  sorting can improve performance. */
  List<SortBy>? sortBy;
  /* An array of field ids for the fields that should be returned in the
  response. If empty, the default columns on the table will be returned. */
  List<int>? select;
  /* The table identifier. */
  String from;


  RecordsQueryRequest({
    this.where, required this.from, this.groupBy, this.options, this.select,
    this.sortBy
  });

  factory RecordsQueryRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordsQueryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsQueryRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class RecordsQueryOptions {
  /* The number of records to skip. */
  int? skip;
  /* Whether to run the query against a date time field with
  respect to the application's local time. The query is run
  with UTC time by default. */
  bool? compareWithAppLocalTime;
  /* The maximum number of records to display. */
  int? top;

  RecordsQueryOptions({
    this.top, this.skip, this.compareWithAppLocalTime
  });

  factory RecordsQueryOptions.fromJson(Map<String, dynamic> json) =>
      _$RecordsQueryOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsQueryOptionsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RecordsQueryGroupBy {
  /* The unique identifier of a field in a table. */
  int? fieldId;
  /* Group by based on ascending order (ASC),
  descending order (DESC) or equal values (equal-values) */
  String? grouping = null;
  //enum groupingEnum {  ASC,  DESC,  equal-values,  };

  RecordsQueryGroupBy({
    this.fieldId, this.grouping
  });

  factory RecordsQueryGroupBy.fromJson(Map<String, dynamic> json) =>
      _$RecordsQueryGroupByFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsQueryGroupByToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class SortBy {
  final int? fieldId;
  final String? order;

  SortBy({
    this.fieldId, this.order
  });

  factory SortBy.fromJson(Map<String, dynamic> json) =>
      _$SortByFromJson(json);

  Map<String, dynamic> toJson() => _$SortByToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class RecordsQueryResponse {

  final List<Field>? fields;

  final List<Map<String, dynamic>>? data;

  final RecordMetadata? metadata;

  RecordsQueryResponse({
    this.fields, this.metadata, this.data
  });

  factory RecordsQueryResponse.fromJson(Map<String, dynamic> json) =>
      _$RecordsQueryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsQueryResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RecordMetadata {

  final int? skip;

  final int? numFields;

  final int? top;

  final int? totalRecords;

  final int? numRecords;

  RecordMetadata({
    this.skip, this.top, this.numFields, this.numRecords, this.totalRecords
  });

  factory RecordMetadata.fromJson(Map<String, dynamic> json) =>
      _$RecordMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$RecordMetadataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class Field {

  final int? id;

  final String? label;

  final String? type;

  Field({
    this.type, this.id, this.label
  });

  factory Field.fromJson(Map<String, dynamic> json) =>
      _$FieldFromJson(json);

  Map<String, dynamic> toJson() => _$FieldToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RecordsUpsertRequest {
  /* The table identifier. */
  String to;
  /* Record data array, where each record contains key-value
  mappings of fields to be defined/updated and their values. */
  List<Map<String,dynamic>>? data = null;
  /* The merge field id. */
  int? mergeFieldId = null;
  /* Specify an array of field ids that will return data
  for any updates or added record. Record ID (FID 3) is always
  returned if any field ID is requested. */
  List<int>? fieldsToReturn;

  RecordsUpsertRequest({
    this.data, this.fieldsToReturn, this.mergeFieldId, required this.to
  });

  factory RecordsUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$RecordsUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class RecordsUpsertResponse {

  final RecordUpsertMetadata? metadata;

  final List<Map<String, dynamic>>? data;

  RecordsUpsertResponse({
    this.data, this.metadata
  });

  factory RecordsUpsertResponse.fromJson(Map<String, dynamic> json) =>
      _$RecordsUpsertResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RecordsUpsertResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RecordUpsertMetadata {

  final List<int>? createdRecordIds;

  final Map<String, dynamic>? lineErrors;

  final List<int>? unchangedRecordIds;

  final List<int>? updatedRecordIds;

  final List<int>? totalNumberOfRecordsProcessed;

  RecordUpsertMetadata({
    this.createdRecordIds, this.lineErrors, this.totalNumberOfRecordsProcessed,
    this.unchangedRecordIds, this.updatedRecordIds
  });

  factory RecordUpsertMetadata.fromJson(Map<String, dynamic> json) =>
      _$RecordUpsertMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$RecordUpsertMetadataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class LineErrors {
  // TODO once we get a better idea of how this is handled
}

@JsonSerializable(includeIfNull: false)
class ReportResponse {

  final String? id;

  final String? name;

  final String? type;

  final String? description;

  final String? ownerId;

  final ReportQuery? query;

  final Map<String, dynamic>? properties;

  final String? usedLast;

  final int? usedCount;

  ReportResponse({
    this.id, this.type, this.name, this.properties, this.description,
    this.query, this.ownerId, this.usedCount, this.usedLast
  });

  factory ReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReportResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class ReportQuery {

  final String? tableId;

  final String? filter;

  final List<CalculatedFormulaField>? formulaFields;

  ReportQuery({
    this.tableId, this.filter, this.formulaFields
  });

  factory ReportQuery.fromJson(Map<String, dynamic> json) =>
      _$ReportQueryFromJson(json);

  Map<String, dynamic> toJson() => _$ReportQueryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class CalculatedFormulaField {

  final int? id;

  final String? label;

  final FormulaType? fieldType;

  final String? formula;

  final int? decimalPrecision;

  CalculatedFormulaField({
    this.id, this.label, this.formula, this.fieldType, this.decimalPrecision,
  });

  factory CalculatedFormulaField.fromJson(Map<String, dynamic> json) =>
      _$CalculatedFormulaFieldFromJson(json);

  Map<String, dynamic> toJson() => _$CalculatedFormulaFieldToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class RunReportRequest {
  final String tableId;
  final int? skip;
  final int? top;

  RunReportRequest({
    required this.tableId, this.top, this.skip
  });

  factory RunReportRequest.fromJson(Map<String, dynamic> json) =>
      _$RunReportRequestFromJson(json);

  Map<String, dynamic> toJson() => _$RunReportRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RunReportResponse {

  final List<Map<String, dynamic>>? data;

  final List<ReportField>? fields;

  final ReportMetadata? metadata;

  RunReportResponse({
    this.metadata, this.data, this.fields
  });

  factory RunReportResponse.fromJson(Map<String, dynamic> json) =>
      _$RunReportResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RunReportResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ReportMetadata {
  final int? skip;
  final int? numFields;
  final int? top;
  final int? totalRecords;
  final int? numRecords;

  ReportMetadata({
    this.skip, this.top, this.totalRecords, this.numRecords, this.numFields
  });

  factory ReportMetadata.fromJson(Map<String, dynamic> json) =>
      _$ReportMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$ReportMetadataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class ReportField {

  final int? id;
  final String? label;
  final String? type;
  final String? labelOverride;

  ReportField({
    this.label, this.id, this.type, this.labelOverride
  });

  factory ReportField.fromJson(Map<String, dynamic> json) =>
      _$ReportFieldFromJson(json);

  Map<String, dynamic> toJson() => _$ReportFieldToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TableIdRelationshipRequest {
  /* Array of summary field objects which will turn into summary
  fields in the parent table. When you specify the 'COUNT'
  accumulation type, you have to specify 0 as the summaryFid
  (or not set it in the request). 'DISTINCT-COUNT' requires
  that summaryFid be set to an actual fid. */
  final List<TablestableIdrelationshipSummaryFields>? summaryFields;
  /* Array of field ids in the parent table that will become
  lookup fields in the child table. */
  final List<int>? lookupFieldIds;
  /* The parent table id for the relationship. */
  final String parentTableId;

  final TablestableIdrelationshipForeignKeyField? foreignKeyField;


  TableIdRelationshipRequest({
    this.foreignKeyField, this.lookupFieldIds, required this.parentTableId, this.summaryFields
  });

  factory TableIdRelationshipRequest.fromJson(Map<String, dynamic> json) =>
      _$TableIdRelationshipRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TableIdRelationshipRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TablestableIdrelationshipSummaryFields {
  /* The field id to summarize. */
  final double? summaryFid;
  /* The label for the summary field. */
  final String? label;
  /* The accumulation type for the summary field. */
  final AccumulationType accumulationType;
  /* The filter, using the Quickbase query language, which
  determines the records to return. */
  final String? where;

  TablestableIdrelationshipSummaryFields({
    this.label, this.where, required this.accumulationType, this.summaryFid
  });

  factory TablestableIdrelationshipSummaryFields.fromJson(Map<String, dynamic> json) =>
      _$TablestableIdrelationshipSummaryFieldsFromJson(json);

  Map<String, dynamic> toJson() => _$TablestableIdrelationshipSummaryFieldsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TablestableIdrelationshipForeignKeyField {
  /* The label for the foreign key field. */
  final String? label;

  TablestableIdrelationshipForeignKeyField({
    this.label
  });

  factory TablestableIdrelationshipForeignKeyField.fromJson(Map<String, dynamic> json) =>
      _$TablestableIdrelationshipForeignKeyFieldFromJson(json);

  Map<String, dynamic> toJson() => _$TablestableIdrelationshipForeignKeyFieldToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class TableRelationshipResponse {
  final int? id;
  final String? parentTableId;
  final String? childTableId;
  final Field? foreignKeyField;
  final bool? isCrossApp;
  final List<Field>? lookupFields;
  final List<Field>? summaryFields;

  TableRelationshipResponse({
    this.summaryFields, this.parentTableId, this.foreignKeyField,
    this.id, this.childTableId, this.isCrossApp, this.lookupFields
  });

  factory TableRelationshipResponse.fromJson(Map<String, dynamic> json) =>
      _$TableRelationshipResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TableRelationshipResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }


}

@JsonSerializable(includeIfNull: false)
class TablesUpsertRequest {
  /* The name for the table. */
  final String name;
  /* The plural noun for records in the table. If this value is
  not passed the default value is 'Records'. */
  final String? pluralRecordName;
  /* The singular noun for records in the table. If this value
  is not passed the default value is 'Record'. */
  final String? singleRecordName;
  /* The description for the table. If this value is not passed
  the default value is blank. */
  final String? description ;

  TablesUpsertRequest({
    this.description, required this.name, this.pluralRecordName, this.singleRecordName
  });

  factory TablesUpsertRequest.fromJson(Map<String, dynamic> json) =>
      _$TablesUpsertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TablesUpsertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class TableResponse {

  final String? name;
  final String? id;
  final String? alias;
  final String? description;
  final String? created;
  final String? updated;
  final int? nextRecordId;
  final int? nextFieldId;
  final int? defaultSortFieldId;
  final SortOrder? defaultSortOrder;
  final int? keyFieldId;
  final String? singleRecordName;
  final String? pluralRecordName;
  final String? sizeLimit;
  final String? spaceUsed;
  final String? spaceRemaining;

  TableResponse({
    this.singleRecordName, this.pluralRecordName, this.name,
    this.description, this.id, this.updated, this.created,
    this.alias, this.defaultSortFieldId, this.defaultSortOrder, this.keyFieldId,
    this.nextFieldId, this.nextRecordId, this.sizeLimit, this.spaceRemaining,
    this.spaceUsed
  });

  factory TableResponse.fromJson(Map<String, dynamic> json) =>
      _$TableResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TableResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class RelationShipListResponse {

  final List<TableRelationshipResponse>? relationships;
  final RelationshipMetadata? metadata;

  RelationShipListResponse({
    this.metadata, this.relationships
  });

  factory RelationShipListResponse.fromJson(Map<String, dynamic> json) =>
      _$RelationShipListResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RelationShipListResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class RelationshipMetadata {

  final int? skip;
  final int? totalRelationships;
  final int? numRelationships;

  RelationshipMetadata({
    this.skip, this.numRelationships, this.totalRelationships
  });

  factory RelationshipMetadata.fromJson(Map<String, dynamic> json) =>
      _$RelationshipMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$RelationshipMetadataToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class UserTokenCloneRequest {
  /* The new name for the cloned user token. */
  String? name;
  /* The description for the cloned user token. */
  String? description;

  UserTokenCloneRequest({
    this.description, this.name
  });

  factory UserTokenCloneRequest.fromJson(Map<String, dynamic> json) =>
      _$UserTokenCloneRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UserTokenCloneRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class UserTokenResponse {

  final bool? active;
  final List<QuickbaseApp>? apps;
  final String? lastUsed;
  final String? description;
  final int? id;
  final String? name;
  final String? token;

  UserTokenResponse({
    this.name, this.description, this.id, this.token, this.active,
    this.apps, this.lastUsed
  });

  factory UserTokenResponse.fromJson(Map<String, dynamic> json) =>
      _$UserTokenResponseFromJson(json);

  Map<String, dynamic> toJson() => _$UserTokenResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

@JsonSerializable(includeIfNull: false)
class QuickbaseApp {
  final String? id;
  final String? name;

  QuickbaseApp({
    this.id, this.name
  });

  factory QuickbaseApp.fromJson(Map<String, dynamic> json) =>
      _$QuickbaseAppFromJson(json);

  Map<String, dynamic> toJson() => _$QuickbaseAppToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

@JsonSerializable(includeIfNull: false)
class DenyUsersResponse {
  final List<String>? failure;
  final List<String>? success;

  DenyUsersResponse({
    this.success, this.failure
  });

  factory DenyUsersResponse.fromJson(Map<String, dynamic> json) =>
      _$DenyUsersResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DenyUsersResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}

enum SortOrder {
  ASC,
  DESC
}

enum FormulaType {
@JsonValue("rich-text") rich_text,
  text,
  numeric,
  currency,
  percent,

}


enum AccumulationType {
  AVG,
  SUM,
  MAX,
  MIN,
  @JsonValue("STD-DEV") STD_DEV,
  COUNT,
  @JsonValue("COMBINED-TEXT") COMBINED_TEXT,
  @JsonValue("DISTINCT-COUNT") DISTINCT_COUNT,
}

enum AppEventType {
  webhook,
  @JsonValue("qb_action")
  qb_action,
  @JsonValue("email-notification")
  email_notification,
  subscription,
  reminder,
  automation,
}
