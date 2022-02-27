part of swagger.api;

class FieldsProperties1 {
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
  List<String> choices = [];
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

  FieldsProperties1();

  @override
  String toString() {
    return 'FieldsProperties1[comments=$comments, doesTotal=$doesTotal, autoSave=$autoSave, defaultValueLuid=$defaultValueLuid, useI18NFormat=$useI18NFormat, maxVersions=$maxVersions, format=$format, carryChoices=$carryChoices, maxLength=$maxLength, linkText=$linkText, parentFieldId=$parentFieldId, displayTimezone=$displayTimezone, allowNewChoices=$allowNewChoices, defaultToday=$defaultToday, units=$units, sourceFieldId=$sourceFieldId, doesAverage=$doesAverage, formula=$formula, decimalPlaces=$decimalPlaces, defaultCountryCode=$defaultCountryCode, displayMonth=$displayMonth, seeVersions=$seeVersions, numLines=$numLines, defaultKind=$defaultKind, displayEmail=$displayEmail, coverText=$coverText, currencySymbol=$currencySymbol, targetFieldId=$targetFieldId, displayUser=$displayUser, blankIsZero=$blankIsZero, exact=$exact, defaultDomain=$defaultDomain, defaultValue=$defaultValue, abbreviate=$abbreviate, numberFormat=$numberFormat, targetTableName=$targetTableName, appearsAs=$appearsAs, width=$width, currencyFormat=$currencyFormat, displayImages=$displayImages, displayDayOfWeek=$displayDayOfWeek, commaStart=$commaStart, choices=$choices, targetTableId=$targetTableId, displayRelative=$displayRelative, compositeFields=, displayTime=$displayTime, versionMode=$versionMode, snapFieldId=$snapFieldId, hours24=$hours24, sortAlpha=$sortAlpha, sortAsGiven=$sortAsGiven, hasExtension=$hasExtension, useNewWindow=$useNewWindow, appendOnly=$appendOnly, displayAsLink=$displayAsLink, ]';
  }

  FieldsProperties1.fromJson(Map<String, dynamic> json) {
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
    allowNewChoices = json['allowNewChoices'];
    defaultToday = json['defaultToday'];
    units = json['units'];
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
    commaStart = json['commaStart'];
    choices = (json['choices'] as List).map((item) => item as String).toList();
    targetTableId = json['targetTableId'];
    displayRelative = json['displayRelative'];
    //compositeFields = new List.fromJson(json['compositeFields']);
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
      'allowNewChoices': allowNewChoices,
      'defaultToday': defaultToday,
      'units': units,
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
      'commaStart': commaStart,
      'choices': choices,
      'targetTableId': targetTableId,
      'displayRelative': displayRelative,
      //'compositeFields': compositeFields,
      'displayTime': displayTime,
      'versionMode': versionMode,
      'snapFieldId': snapFieldId,
      'hours24': hours24,
      'sortAlpha': sortAlpha,
      'sortAsGiven': sortAsGiven,
      'hasExtension': hasExtension,
      'useNewWindow': useNewWindow,
      'appendOnly': appendOnly,
      'displayAsLink': displayAsLink
     };
  }

  static List<FieldsProperties1> listFromJson(List<dynamic>? json) {
    return json == null ? List<FieldsProperties1>.empty(growable: true) : json.map((value) => FieldsProperties1.fromJson(value)).toList();
  }

  static Map<String, FieldsProperties1> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, FieldsProperties1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = FieldsProperties1.fromJson(value));
    }
    return map;
  }
}
