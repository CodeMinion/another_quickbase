part of swagger.api;

class FieldsProperties {
  /* The comments entered on the field properties by an administrator. */
  String? comments;
/* Whether this field totals in reports within the product. */
  bool? doesTotal;
/* Whether the link field will auto save. */
  bool? autoSave;
/* Default user id value. */
  int? defaultValueLuid;
/* Whether phone numbers should be in E.164 standard international format. */
  bool? useI18NFormat;
/* The maximum number of versions configured for a file attachment. */
  int? maxVersions;
/* Whether the field should carry its multiple choice fields when copied. */
  bool? carryChoices;
/* The format to display time. */
  int? format;
/* The maximum number of characters allowed for entry in Quickbase for this field. */
  int? maxLength;
/* The configured text value that replaces the URL that users see within the product. */
  String? linkText;
/* The id of the parent composite field, when applicable. */
  int? parentFieldId;
/* Indicates whether to display the timezone within the product. */
  bool? displayTimezone;
/* The id of the field that is used to aggregate values from the child, when applicable. This displays 0 if the summary function doesn’t require a field selection (like count). */
  int? summaryTargetFieldId;
/* Indicates if users can add new choices to a selection list. */
  bool? allowNewChoices;
/* The id of the field that is the reference in the relationship. */
  int? masterChoiceFieldId;
/* Indicates if the field value is defaulted today for new records. */
  bool? defaultToday;
/* The units label. */
  String? units;
/* The id of the field that is the target on the master table for this lookup. */
  int? lookupTargetFieldId;
/* The summary accumulation function type. */
  String? summaryFunction;
  //enum summaryFunctionEnum {  AVG,  SUM,  MAX,  MIN,  STD-DEV,  COUNT,  COMBINED-TEXT,  DISTINCT-COUNT,  };
/* The id of the source field. */
  int? sourceFieldId;
/* The table alias for the master table in the relationship this field is part of. */
  String? masterTableTag;
/* Whether this field averages in reports within the product. */
  bool? doesAverage;
/* The formula of the field as configured in Quickbase. */
  String? formula;
/* The number of decimal places displayed in the product for this field. */
  int? decimalPlaces;
/* Controls the default country shown on international phone widgets on forms. Country code should be entered in the ISO 3166-1 alpha-2 format. */
  String? defaultCountryCode ;
/* Indicates if the user can see other versions, aside from the most recent, of a file attachment within the product. */
  bool? seeVersions;
/* How to display months. */
  String? displayMonth;
/* The number of lines shown in Quickbase for this text field. */
  int? numLines;
/* How the email is displayed. */
  String? displayEmail;
/* The user default type. */
  String? defaultKind ;
/* An alternate user friendly text that can be used to display a link in the browser. */
  String? coverText;
/* The current symbol used when displaying field values within the product. */
  String? currencySymbol;
/* The id of the table that is the master in this relationship. */
  String? masterChoiceTableId;
/* The id of the target field. */
  int? targetFieldId;
/* The configured option for how users display within the product. */
  String? displayUser;
/* Whether a blank value is treated the same as 0 in calculations within the product. */
  bool? blankIsZero;
/* Whether an exact match is required for a report link. */
  bool? exact;
/* The start field id. */
  int? startField;
/* Default email domain. */
  String? defaultDomain;
/* The default value configured for a field when a new record is added. */
  String? defaultValue;
/* List of user choices. */
  List<String>? choicesLuid;
/* Don't show the URL protocol when showing the URL. */
  bool? abbreviate;
/* The field's xml tag. */
  String? xmlTag;
/* The field's target table name. */
  String? targetTableName;
/* The format used for displaying numeric values in the product (decimal, separators, digit group). */
  int? numberFormat;
/* The link text, if empty, the url will be used as link text. */
  String? appearsAs;
/* The field's html input width in the product. */
  int? width;
/* The currency format used when displaying field values within the product. */
  String? currencyFormat;
  //enum currencyFormatEnum {  left,  right,  middle,  };
/* Indicates whether images will display for file attachments on forms and reports within the product. */
  bool? displayImages;
/* Indicates if the field is a foreign key (or reference field) in a relationship. */
  bool? foreignKey;
/* Indicates whether to display the day of the week within the product. */
  bool? displayDayOfWeek;
/* The id of the field that is the reference in the relationship for this summary. */
  int? summaryReferenceFieldId;
/* The number of digits before commas display in the product, when applicable. */
  int? commaStart;
/* An array of entries that exist for a field that offers choices to the user. */
  List<String> choices = [];
/* The id of the target table. */
  String? targetTableId;
/* Whether to display time as relative. */
  bool? displayRelative;
/* An array of the fields that make up a composite field (e.g., address). */
  //List? compositeFields;
/* Version modes for files. Keep all versions vs keep last version. */
  String? versionMode;
  //enum versionModeEnum {  keepallversions,  keeplastversions,  };
/* Indicates whether to display the time, in addition to the date. */
  bool? displayTime;
/* The duration field id. */
  int? durationField;
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
/* The work week type. */
  int? workWeek;
/* Indicates if the URL should open a new window when a user clicks it within the product. */
  bool? useNewWindow;
/* Whether this field is append only. */
  bool? appendOnly;
/* Indicates if a field that is part of the relationship should be shown as a hyperlink to the parent record within the product. */
  bool? displayAsLink;
/* Whether this field allows html. */
  bool? allowHTML;
/* The id of the field that is the reference in the relationship for this lookup. */
  int? lookupReferenceFieldId;

  FieldsProperties();

  @override
  String toString() {
    return 'FieldsProperties[comments=$comments, doesTotal=$doesTotal, autoSave=$autoSave, defaultValueLuid=$defaultValueLuid, useI18NFormat=$useI18NFormat, maxVersions=$maxVersions, carryChoices=$carryChoices, format=$format, maxLength=$maxLength, linkText=$linkText, parentFieldId=$parentFieldId, displayTimezone=$displayTimezone, summaryTargetFieldId=$summaryTargetFieldId, allowNewChoices=$allowNewChoices, masterChoiceFieldId=$masterChoiceFieldId, defaultToday=$defaultToday, units=$units, lookupTargetFieldId=$lookupTargetFieldId, summaryFunction=$summaryFunction, sourceFieldId=$sourceFieldId, masterTableTag=$masterTableTag, doesAverage=$doesAverage, formula=$formula, decimalPlaces=$decimalPlaces, defaultCountryCode=$defaultCountryCode, seeVersions=$seeVersions, displayMonth=$displayMonth, numLines=$numLines, displayEmail=$displayEmail, defaultKind=$defaultKind, coverText=$coverText, currencySymbol=$currencySymbol, masterChoiceTableId=$masterChoiceTableId, targetFieldId=$targetFieldId, displayUser=$displayUser, blankIsZero=$blankIsZero, exact=$exact, startField=$startField, defaultDomain=$defaultDomain, defaultValue=$defaultValue, choicesLuid=$choicesLuid, abbreviate=$abbreviate, xmlTag=$xmlTag, targetTableName=$targetTableName, numberFormat=$numberFormat, appearsAs=$appearsAs, width=$width, currencyFormat=$currencyFormat, displayImages=$displayImages, foreignKey=$foreignKey, displayDayOfWeek=$displayDayOfWeek, summaryReferenceFieldId=$summaryReferenceFieldId, commaStart=$commaStart, choices=$choices, targetTableId=$targetTableId, displayRelative=$displayRelative, compositeFields="", versionMode=$versionMode, displayTime=$displayTime, durationField=$durationField, snapFieldId=$snapFieldId, hours24=$hours24, sortAlpha=$sortAlpha, sortAsGiven=$sortAsGiven, hasExtension=$hasExtension, workWeek=$workWeek, useNewWindow=$useNewWindow, appendOnly=$appendOnly, displayAsLink=$displayAsLink, allowHTML=$allowHTML, lookupReferenceFieldId=$lookupReferenceFieldId, ]';
  }

  FieldsProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    comments = json['comments'];
    doesTotal = json['doesTotal'];
    autoSave = json['autoSave'];
    defaultValueLuid = json['defaultValueLuid'];
    useI18NFormat = json['useI18NFormat'];
    maxVersions = json['maxVersions'];
    carryChoices = json['carryChoices'];
    format = json['format'];
    maxLength = json['maxLength'];
    linkText = json['linkText'];
    parentFieldId = json['parentFieldId'];
    displayTimezone = json['displayTimezone'];
    summaryTargetFieldId = json['summaryTargetFieldId'];
    allowNewChoices = json['allowNewChoices'];
    masterChoiceFieldId = json['masterChoiceFieldId'];
    defaultToday = json['defaultToday'];
    units = json['units'];
    lookupTargetFieldId = json['lookupTargetFieldId'];
    summaryFunction = json['summaryFunction'];
    sourceFieldId = json['sourceFieldId'];
    masterTableTag = json['masterTableTag'];
    doesAverage = json['doesAverage'];
    formula = json['formula'];
    decimalPlaces = json['decimalPlaces'];
    defaultCountryCode = json['defaultCountryCode'];
    seeVersions = json['seeVersions'];
    displayMonth = json['displayMonth'];
    numLines = json['numLines'];
    displayEmail = json['displayEmail'];
    defaultKind = json['defaultKind'];
    coverText = json['coverText'];
    currencySymbol = json['currencySymbol'];
    masterChoiceTableId = json['masterChoiceTableId'];
    targetFieldId = json['targetFieldId'];
    displayUser = json['displayUser'];
    blankIsZero = json['blankIsZero'];
    exact = json['exact'];
    startField = json['startField'];
    defaultDomain = json['defaultDomain'];
    defaultValue = json['defaultValue'];
    choicesLuid = json['choicesLuid'];
    abbreviate = json['abbreviate'];
    xmlTag = json['xmlTag'];
    targetTableName = json['targetTableName'];
    numberFormat = json['numberFormat'];
    appearsAs = json['appearsAs'];
    width = json['width'];
    currencyFormat = json['currencyFormat'];
    displayImages = json['displayImages'];
    foreignKey = json['foreignKey'];
    displayDayOfWeek = json['displayDayOfWeek'];
    summaryReferenceFieldId = json['summaryReferenceFieldId'];
    commaStart = json['commaStart'];
    choices = (json['choices'] as List).map((item) => item as String).toList();
    targetTableId = json['targetTableId'];
    displayRelative = json['displayRelative'];
    //compositeFields = List.fromJson(json['compositeFields']);
    versionMode = json['versionMode'];
    displayTime = json['displayTime'];
    durationField = json['durationField'];
    snapFieldId = json['snapFieldId'];
    hours24 = json['hours24'];
    sortAlpha = json['sortAlpha'];
    sortAsGiven = json['sortAsGiven'];
    hasExtension = json['hasExtension'];
    workWeek = json['workWeek'];
    useNewWindow = json['useNewWindow'];
    appendOnly = json['appendOnly'];
    displayAsLink = json['displayAsLink'];
    allowHTML = json['allowHTML'];
    lookupReferenceFieldId = json['lookupReferenceFieldId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'comments': comments,
      'doesTotal': doesTotal,
      'autoSave': autoSave,
      'defaultValueLuid': defaultValueLuid,
      'useI18NFormat': useI18NFormat,
      'maxVersions': maxVersions,
      'carryChoices': carryChoices,
      'format': format,
      'maxLength': maxLength,
      'linkText': linkText,
      'parentFieldId': parentFieldId,
      'displayTimezone': displayTimezone,
      'summaryTargetFieldId': summaryTargetFieldId,
      'allowNewChoices': allowNewChoices,
      'masterChoiceFieldId': masterChoiceFieldId,
      'defaultToday': defaultToday,
      'units': units,
      'lookupTargetFieldId': lookupTargetFieldId,
      'summaryFunction': summaryFunction,
      'sourceFieldId': sourceFieldId,
      'masterTableTag': masterTableTag,
      'doesAverage': doesAverage,
      'formula': formula,
      'decimalPlaces': decimalPlaces,
      'defaultCountryCode': defaultCountryCode,
      'seeVersions': seeVersions,
      'displayMonth': displayMonth,
      'numLines': numLines,
      'displayEmail': displayEmail,
      'defaultKind': defaultKind,
      'coverText': coverText,
      'currencySymbol': currencySymbol,
      'masterChoiceTableId': masterChoiceTableId,
      'targetFieldId': targetFieldId,
      'displayUser': displayUser,
      'blankIsZero': blankIsZero,
      'exact': exact,
      'startField': startField,
      'defaultDomain': defaultDomain,
      'defaultValue': defaultValue,
      'choicesLuid': choicesLuid,
      'abbreviate': abbreviate,
      'xmlTag': xmlTag,
      'targetTableName': targetTableName,
      'numberFormat': numberFormat,
      'appearsAs': appearsAs,
      'width': width,
      'currencyFormat': currencyFormat,
      'displayImages': displayImages,
      'foreignKey': foreignKey,
      'displayDayOfWeek': displayDayOfWeek,
      'summaryReferenceFieldId': summaryReferenceFieldId,
      'commaStart': commaStart,
      'choices': choices,
      'targetTableId': targetTableId,
      'displayRelative': displayRelative,
      //'compositeFields': compositeFields,
      'versionMode': versionMode,
      'displayTime': displayTime,
      'durationField': durationField,
      'snapFieldId': snapFieldId,
      'hours24': hours24,
      'sortAlpha': sortAlpha,
      'sortAsGiven': sortAsGiven,
      'hasExtension': hasExtension,
      'workWeek': workWeek,
      'useNewWindow': useNewWindow,
      'appendOnly': appendOnly,
      'displayAsLink': displayAsLink,
      'allowHTML': allowHTML,
      'lookupReferenceFieldId': lookupReferenceFieldId
     };
  }

  static List<FieldsProperties> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsProperties>.empty(growable: true) : json.map((value) => FieldsProperties.fromJson(value)).toList();
  }

  static Map<String, FieldsProperties> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = Map<String, FieldsProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = FieldsProperties.fromJson(value));
    }
    return map;
  }
}
