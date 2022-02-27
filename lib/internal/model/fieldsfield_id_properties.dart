part of swagger.api;

class FieldsfieldIdProperties {
  /* The comments entered on the field properties by an administrator. */
  String? comments = null;
/* Whether this field totals in reports within the product. */
  bool? doesTotal = null;
/* Whether the link field will auto save. */
  bool? autoSave = null;
/* Default user id value. */
  int? defaultValueLuid = null;
/* Whether phone numbers should be in E.164 standard international format */
  bool? useI18NFormat = null;
/* The maximum number of versions configured for a file attachment. */
  int? maxVersions = null;
   // range from 1 to //
/* The format to display time. */
  int? format = null;
/* Whether the field should carry its multiple choice fields when copied. */
  bool? carryChoices = null;
/* The maximum number of characters allowed for entry in Quickbase for this field. */
  int? maxLength = null;
/* The configured text value that replaces the URL that users see within the product. */
  String? linkText = null;
/* The id of the parent composite field, when applicable. */
  int? parentFieldId = null;
/* Indicates whether to display the timezone within the product. */
  bool? displayTimezone = null;
/* The id of the field that is used to aggregate values from the child, when applicable. This displays 0 if the summary function doesn’t require a field selection (like count). */
  int? summaryTargetFieldId = null;
/* Indicates if users can add new choices to a selection list. */
  bool? allowNewChoices = null;
/* Indicates if the field value is defaulted today for new records. */
  bool? defaultToday = null;
/* The units label. */
  String? units = null;
/* The id of the field that is the target on the parent table for this lookup. */
  int? lookupTargetFieldId = null;
/* The accumulation type for the summary field. */
  String? summaryFunction = null;
  //enum summaryFunctionEnum {  AVG,  SUM,  MAX,  MIN,  STD-DEV,  COUNT,  COMBINED-TEXT,  DISTINCT-COUNT,  };
/* The id of the source field. */
  int? sourceFieldId = null;
/* Whether this field averages in reports within the product. */
  bool? doesAverage = null;
/* The formula of the field as configured in Quickbase. */
  String? formula = null;
/* The number of decimal places displayed in the product for this field. */
  int? decimalPlaces = null;
/* Controls the default country shown on international phone widgets on forms. Country code should be entered in the ISO 3166-1 alpha-2 format. */
  String? defaultCountryCode = null;
/* How to display months. */
  String? displayMonth = null;
/* Indicates if the user can see other versions, aside from the most recent, of a file attachment within the product. */
  bool? seeVersions = null;
/* The number of lines shown in Quickbase for this text field. */
  int? numLines = null;
/* The user default type. */
  String? defaultKind = null;
/* How the email is displayed. */
  String? displayEmail = null;
/* An alternate user friendly text that can be used to display a link in the browser. */
  String? coverText = null;
/* The current symbol used when displaying field values within the product. */
  String? currencySymbol = null;
/* The summary query. */
  String? summaryQuery = null;
/* The id of the target field. */
  int? targetFieldId = null;
/* The configured option for how users display within the product. */
  String? displayUser = null;
/* Whether a blank value is treated the same as 0 in calculations within the product. */
  bool? blankIsZero = null;
/* Whether an exact match is required for a report link. */
  bool? exact = null;
/* Default email domain. */
  String? defaultDomain = null;
/* The default value configured for a field when a new record is added. */
  String? defaultValue = null;
/* Don't show the URL protocol when showing the URL. */
  bool? abbreviate = null;
/* The format used for displaying numeric values in the product (decimal, separators, digit group). */
  int? numberFormat = null;
/* The field's target table name. */
  String? targetTableName = null;
/* The link text, if empty, the url will be used as link text. */
  String? appearsAs = null;
/* The field's html input width in the product. */
  int? width = null;
/* The currency format used when displaying field values within the product. */
  String? currencyFormat = null;
  //enum currencyFormatEnum {  left,  right,  middle,  };
/* Indicates whether images will display for file attachments on forms and reports within the product. */
  bool? displayImages = null;
/* Indicates whether to display the day of the week within the product. */
  bool? displayDayOfWeek = null;
/* The id of the field that is the reference in the relationship for this summary. */
  int? summaryReferenceFieldId = null;
/* The number of digits before commas display in the product, when applicable. */
  int? commaStart = null;
/* An array of entries that exist for a field that offers choices to the user. Note that these choices refer to the valid values of any records added in the future. You are allowed to remove values from the list of choices even if there are existing records with those values in this field. They will be displayed in red when users look at the data in the browser but there is no other effect. While updating a field with this property, the old choices are removed and replaced by the new choices. */
  List<String> choices = [];
/* The id of the target table. */
  String? targetTableId = null;
/* Whether to display time as relative. */
  bool? displayRelative = null;
/* An array of the fields that make up a composite field (e.g., address). */
  //List? compositeFields = null;
/* The table the summary field references fields from. */
  String? summaryTableId = null;
/* Indicates whether to display the time, in addition to the date. */
  bool? displayTime = null;
/* Version modes for files. Keep all versions vs keep last version. */
  String? versionMode = null;
  //enum versionModeEnum {  keepallversions,  keeplastversions,  };
/* The id of the field that is used to snapshot values from, when applicable. */
  int? snapFieldId = null;
/* Indicates whether or not to display time in the 24-hour format within the product. */
  bool? hours24 = null;
/* Whether to sort alphabetically, default sort is by record ID. */
  bool? sortAlpha = null;
/* Indicates if the listed entries sort as entered vs alphabetically. */
  bool? sortAsGiven = null;
/* Whether this field has a phone extension. */
  bool? hasExtension = null;
/* Indicates if the URL should open a new window when a user clicks it within the product. */
  bool? useNewWindow = null;
/* Whether this field is append only. */
  bool? appendOnly = null;
/* Indicates if a field that is part of the relationship should be shown as a hyperlink to the parent record within the product. */
  bool? displayAsLink = null;
/* The id of the field that is the reference in the relationship for this lookup. */
  int? lookupReferenceFieldId = null;

  FieldsfieldIdProperties();

  @override
  String toString() {
    return 'FieldsfieldIdProperties[comments=$comments, doesTotal=$doesTotal, autoSave=$autoSave, defaultValueLuid=$defaultValueLuid, useI18NFormat=$useI18NFormat, maxVersions=$maxVersions, format=$format, carryChoices=$carryChoices, maxLength=$maxLength, linkText=$linkText, parentFieldId=$parentFieldId, displayTimezone=$displayTimezone, summaryTargetFieldId=$summaryTargetFieldId, allowNewChoices=$allowNewChoices, defaultToday=$defaultToday, units=$units, lookupTargetFieldId=$lookupTargetFieldId, summaryFunction=$summaryFunction, sourceFieldId=$sourceFieldId, doesAverage=$doesAverage, formula=$formula, decimalPlaces=$decimalPlaces, defaultCountryCode=$defaultCountryCode, displayMonth=$displayMonth, seeVersions=$seeVersions, numLines=$numLines, defaultKind=$defaultKind, displayEmail=$displayEmail, coverText=$coverText, currencySymbol=$currencySymbol, summaryQuery=$summaryQuery, targetFieldId=$targetFieldId, displayUser=$displayUser, blankIsZero=$blankIsZero, exact=$exact, defaultDomain=$defaultDomain, defaultValue=$defaultValue, abbreviate=$abbreviate, numberFormat=$numberFormat, targetTableName=$targetTableName, appearsAs=$appearsAs, width=$width, currencyFormat=$currencyFormat, displayImages=$displayImages, displayDayOfWeek=$displayDayOfWeek, summaryReferenceFieldId=$summaryReferenceFieldId, commaStart=$commaStart, choices=$choices, targetTableId=$targetTableId, displayRelative=$displayRelative, compositeFields=, summaryTableId=$summaryTableId, displayTime=$displayTime, versionMode=$versionMode, snapFieldId=$snapFieldId, hours24=$hours24, sortAlpha=$sortAlpha, sortAsGiven=$sortAsGiven, hasExtension=$hasExtension, useNewWindow=$useNewWindow, appendOnly=$appendOnly, displayAsLink=$displayAsLink, lookupReferenceFieldId=$lookupReferenceFieldId, ]';
  }

  FieldsfieldIdProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    comments = json['comments'];
    doesTotal = json['doesTotal'];
    autoSave = json['autoSave'];
    defaultValueLuid = json['defaultValueLuid'];
    useI18NFormat = json['useI18NFormat'];
    maxVersions = json['maxVersions'];
    format = json['format'];
    carryChoices = json['carryChoices'];
    maxLength = json['maxLength'];
    linkText = json['linkText'];
    parentFieldId = json['parentFieldId'];
    displayTimezone = json['displayTimezone'];
    summaryTargetFieldId = json['summaryTargetFieldId'];
    allowNewChoices = json['allowNewChoices'];
    defaultToday = json['defaultToday'];
    units = json['units'];
    lookupTargetFieldId = json['lookupTargetFieldId'];
    summaryFunction = json['summaryFunction'];
    sourceFieldId = json['sourceFieldId'];
    doesAverage = json['doesAverage'];
    formula = json['formula'];
    decimalPlaces = json['decimalPlaces'];
    defaultCountryCode = json['defaultCountryCode'];
    displayMonth = json['displayMonth'];
    seeVersions = json['seeVersions'];
    numLines = json['numLines'];
    defaultKind = json['defaultKind'];
    displayEmail = json['displayEmail'];
    coverText = json['coverText'];
    currencySymbol = json['currencySymbol'];
    summaryQuery = json['summaryQuery'];
    targetFieldId = json['targetFieldId'];
    displayUser = json['displayUser'];
    blankIsZero = json['blankIsZero'];
    exact = json['exact'];
    defaultDomain = json['defaultDomain'];
    defaultValue = json['defaultValue'];
    abbreviate = json['abbreviate'];
    numberFormat = json['numberFormat'];
    targetTableName = json['targetTableName'];
    appearsAs = json['appearsAs'];
    width = json['width'];
    currencyFormat = json['currencyFormat'];
    displayImages = json['displayImages'];
    displayDayOfWeek = json['displayDayOfWeek'];
    summaryReferenceFieldId = json['summaryReferenceFieldId'];
    commaStart = json['commaStart'];
    choices = (json['choices'] as List).map((item) => item as String).toList();
    targetTableId = json['targetTableId'];
    displayRelative = json['displayRelative'];
    //compositeFields = new List.fromJson(json['compositeFields']);
    summaryTableId = json['summaryTableId'];
    displayTime = json['displayTime'];
    versionMode = json['versionMode'];
    snapFieldId = json['snapFieldId'];
    hours24 = json['hours24'];
    sortAlpha = json['sortAlpha'];
    sortAsGiven = json['sortAsGiven'];
    hasExtension = json['hasExtension'];
    useNewWindow = json['useNewWindow'];
    appendOnly = json['appendOnly'];
    displayAsLink = json['displayAsLink'];
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
      'format': format,
      'carryChoices': carryChoices,
      'maxLength': maxLength,
      'linkText': linkText,
      'parentFieldId': parentFieldId,
      'displayTimezone': displayTimezone,
      'summaryTargetFieldId': summaryTargetFieldId,
      'allowNewChoices': allowNewChoices,
      'defaultToday': defaultToday,
      'units': units,
      'lookupTargetFieldId': lookupTargetFieldId,
      'summaryFunction': summaryFunction,
      'sourceFieldId': sourceFieldId,
      'doesAverage': doesAverage,
      'formula': formula,
      'decimalPlaces': decimalPlaces,
      'defaultCountryCode': defaultCountryCode,
      'displayMonth': displayMonth,
      'seeVersions': seeVersions,
      'numLines': numLines,
      'defaultKind': defaultKind,
      'displayEmail': displayEmail,
      'coverText': coverText,
      'currencySymbol': currencySymbol,
      'summaryQuery': summaryQuery,
      'targetFieldId': targetFieldId,
      'displayUser': displayUser,
      'blankIsZero': blankIsZero,
      'exact': exact,
      'defaultDomain': defaultDomain,
      'defaultValue': defaultValue,
      'abbreviate': abbreviate,
      'numberFormat': numberFormat,
      'targetTableName': targetTableName,
      'appearsAs': appearsAs,
      'width': width,
      'currencyFormat': currencyFormat,
      'displayImages': displayImages,
      'displayDayOfWeek': displayDayOfWeek,
      'summaryReferenceFieldId': summaryReferenceFieldId,
      'commaStart': commaStart,
      'choices': choices,
      'targetTableId': targetTableId,
      'displayRelative': displayRelative,
      //'compositeFields': compositeFields,
      'summaryTableId': summaryTableId,
      'displayTime': displayTime,
      'versionMode': versionMode,
      'snapFieldId': snapFieldId,
      'hours24': hours24,
      'sortAlpha': sortAlpha,
      'sortAsGiven': sortAsGiven,
      'hasExtension': hasExtension,
      'useNewWindow': useNewWindow,
      'appendOnly': appendOnly,
      'displayAsLink': displayAsLink,
      'lookupReferenceFieldId': lookupReferenceFieldId
     };
  }

  static List<FieldsfieldIdProperties> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsfieldIdProperties>.empty(growable: true) : json.map((value) => FieldsfieldIdProperties.fromJson(value)).toList();
  }

  static Map<String, FieldsfieldIdProperties> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsfieldIdProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FieldsfieldIdProperties.fromJson(value));
    }
    return map;
  }
}
