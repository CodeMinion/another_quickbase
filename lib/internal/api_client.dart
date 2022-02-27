part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://api.quickbase.com/v1/"}) {
    // Setup authentications (key: authentication name, value: authentication).
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'AppIdCopyBody':
          return new AppIdCopyBody.fromJson(value);
        case 'AppsAppIdBody':
          return new AppsAppIdBody.fromJson(value);
        case 'AppsAppIdBody1':
          return new AppsAppIdBody1.fromJson(value);
        case 'AppsBody':
          return new AppsBody.fromJson(value);
        case 'AppsVariables':
          return new AppsVariables.fromJson(value);
        case 'AppsappIdcopyProperties':
          return new AppsappIdcopyProperties.fromJson(value);
        case 'AppsappIdeventsOwner':
          return new AppsappIdeventsOwner.fromJson(value);
        case 'FieldsBody':
          return new FieldsBody.fromJson(value);
        case 'FieldsBody1':
          return new FieldsBody1.fromJson(value);
        case 'FieldsFieldIdBody':
          return new FieldsFieldIdBody.fromJson(value);
        case 'FieldsPermissions':
          return new FieldsPermissions.fromJson(value);
        case 'FieldsProperties':
          return new FieldsProperties.fromJson(value);
        case 'FieldsProperties1':
          return new FieldsProperties1.fromJson(value);
        case 'FieldsfieldIdProperties':
          return new FieldsfieldIdProperties.fromJson(value);
        case 'FieldsusageField':
          return new FieldsusageField.fromJson(value);
        case 'FieldsusageUsage':
          return new FieldsusageUsage.fromJson(value);
        case 'FieldsusageUsageActions':
          return new FieldsusageUsageActions.fromJson(value);
        case 'FieldsusageUsageAppHomePages':
          return new FieldsusageUsageAppHomePages.fromJson(value);
        case 'FieldsusageUsageDefaultReports':
          return new FieldsusageUsageDefaultReports.fromJson(value);
        case 'FieldsusageUsageExactForms':
          return new FieldsusageUsageExactForms.fromJson(value);
        case 'FieldsusageUsageFields':
          return new FieldsusageUsageFields.fromJson(value);
        case 'FieldsusageUsageForms':
          return new FieldsusageUsageForms.fromJson(value);
        case 'FieldsusageUsageNotifications':
          return new FieldsusageUsageNotifications.fromJson(value);
        case 'FieldsusageUsagePersonalReports':
          return new FieldsusageUsagePersonalReports.fromJson(value);
        case 'FieldsusageUsageRelationships':
          return new FieldsusageUsageRelationships.fromJson(value);
        case 'FieldsusageUsageReminders':
          return new FieldsusageUsageReminders.fromJson(value);
        case 'FieldsusageUsageReports':
          return new FieldsusageUsageReports.fromJson(value);
        case 'FieldsusageUsageRoles':
          return new FieldsusageUsageRoles.fromJson(value);
        case 'FieldsusageUsageWebhooks':
          return new FieldsusageUsageWebhooks.fromJson(value);
        case 'FormulaRunBody':
          return new FormulaRunBody.fromJson(value);
        case 'InlineResponse200':
          return new InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return new InlineResponse2001.fromJson(value);
        case 'InlineResponse2002':
          return new InlineResponse2002.fromJson(value);
        case 'InlineResponse2003':
          return new InlineResponse2003.fromJson(value);
        case 'InlineResponse2004':
          return new InlineResponse2004.fromJson(value);
        case 'RecordsBody':
          return new RecordsBody.fromJson(value);
        case 'RecordsBody1':
          return new RecordsBody1.fromJson(value);
        case 'RecordsQueryBody':
          return new RecordsQueryBody.fromJson(value);
        case 'RecordsqueryGroupBy':
          return new RecordsqueryGroupBy.fromJson(value);
        case 'RecordsqueryOptions':
          return new RecordsqueryOptions.fromJson(value);
        case 'RelationshipRelationshipIdBody':
          return new RelationshipRelationshipIdBody.fromJson(value);
        case 'ReportsQuery':
          return new ReportsQuery.fromJson(value);
        case 'ReportsQueryFormulaFields':
          return new ReportsQueryFormulaFields.fromJson(value);
        case 'TableIdRelationshipBody':
          return new TableIdRelationshipBody.fromJson(value);
        case 'TablesBody':
          return new TablesBody.fromJson(value);
        case 'TablesTableIdBody':
          return new TablesTableIdBody.fromJson(value);
        case 'TablestableIdrelationshipForeignKeyField':
          return new TablestableIdrelationshipForeignKeyField.fromJson(value);
        case 'TablestableIdrelationshipSummaryFields':
          return new TablestableIdrelationshipSummaryFields.fromJson(value);
        case 'UsertokenCloneBody':
          return new UsertokenCloneBody.fromJson(value);
        default:
          {
            Match? match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match![1];
              return value.map((v) => _deserialize(v, newTargetType ?? "")).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match![1];
              return Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType ?? "")));
            }
          }
      }
    } catch (e, stack) {
      throw ApiException.withInner(500, 'Exception during deserialization.', e as Exception, stack);
    }
    throw ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             List<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(Uri.parse(url), headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(Uri.parse(url), headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(Uri.parse(url), headers: headerParams);
        case "PATCH":
          return client.patch(Uri.parse(url), headers: headerParams, body: msgBody);
        default:
          return client.get(Uri.parse(url), headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication? auth = _authentications[authName];
      if (auth == null) throw ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
