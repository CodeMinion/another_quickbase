part of swagger.api;

class AppsApi {
  final ApiClient apiClient;

  AppsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Copy an app
  ///
  /// Copies the specified application. The new application will have the same schema as the original. See below for additional copy options.
  Future<Map<String, Object>> copyApp(
      String qBRealmHostname, String authorization, String appId,
      {AppIdCopyBody? body, String? userAgent}) async {
    Object? postBody = body;

    // verify required params are set
    if (qBRealmHostname == null) {
      throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }
    if (appId == null) {
      throw new ApiException(400, "Missing required param: appId");
    }

    // create path and map variables
    String path = "/apps/{appId}/copy"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "appId" + "}", appId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
    headerParams["User-Agent"] = userAgent ?? "";
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["*/*"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return new Map<String, Object>.from(
          apiClient.deserialize(response.body, 'Map<String, Object>'));
    } else {
      return null;
    }
  }

  /// Create an app
  ///
  /// Creates an application in an account. You must have application creation rights in the respective account. Main properties and application variables can be set with this API.
  Future<Map<String, Object>> createApp(
      String qBRealmHostname, String authorization,
      {AppsBody body, String userAgent}) async {
    Object postBody = body;

    // verify required params are set
    if (qBRealmHostname == null) {
      throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/apps".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
    headerParams["User-Agent"] = userAgent;
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["*/*"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return new Map<String, Object>.from(
          apiClient.deserialize(response.body, 'Map<String, Object>'));
    } else {
      return null;
    }
  }

  /// Delete an app
  ///
  /// Deletes an entire application, including all of the tables and data.
  Future<Map<String, Object>> deleteApp(
      String qBRealmHostname, String authorization, String appId,
      {AppsAppIdBody1? body, String? userAgent}) async {
    Object? postBody = body;

    // verify required params are set
    if (qBRealmHostname == null) {
      throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }
    if (appId == null) {
      throw new ApiException(400, "Missing required param: appId");
    }

    // create path and map variables
    String path = "/apps/{appId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "appId" + "}", appId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
    headerParams["User-Agent"] = userAgent ?? "";
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["*/*"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'DELETE', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return new Map<String, Object>.from(
          apiClient.deserialize(response.body, 'Map<String, Object>'));
    } else {
      return null;
    }
  }

  /// Get an app
  ///
  /// Returns the main properties of an application, including application variables.
  Future<Map<String, Object>> getApp(
      String appId, String qBRealmHostname, String authorization,
      {String userAgent}) async {
    Object postBody = null;

    // verify required params are set
    if (appId == null) {
      throw new ApiException(400, "Missing required param: appId");
    }
    if (qBRealmHostname == null) {
      throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/apps/{appId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "appId" + "}", appId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
    headerParams["User-Agent"] = userAgent;
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return new Map<String, Object>.from(
          apiClient.deserialize(response.body, 'Map<String, Object>'));
    } else {
      return null;
    }
  }

  /// Get app events
  ///
  /// Get a list of events that can be triggered based on data or user actions in this application, includes: Email notification, Reminders, Subscriptions, QB Actions, Webhooks, record change triggered Automations (does not include scheduled).
  Future<List<InlineResponse200>> getAppEvents(
      String appId, String qBRealmHostname, String authorization,
      {String userAgent}) async {
    Object postBody = null;

    // verify required params are set
    if (appId == null) {
      throw new ApiException(400, "Missing required param: appId");
    }
    if (qBRealmHostname == null) {
      throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/apps/{appId}/events"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "appId" + "}", appId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
    headerParams["User-Agent"] = userAgent;
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return (apiClient.deserialize(response.body, 'List<InlineResponse200>')
              as List)
          .map((item) => item as InlineResponse200)
          .toList();
    } else {
      return null;
    }
  }

  /// Update an app
  ///
  /// Updates the main properties and/or application variables for a specific application. Any properties of the app that you do not specify in the request body will remain unchanged.
  Future<Map<String, Object>> updateApp(
      String qBRealmHostname, String authorization, String appId,
      {AppsAppIdBody body, String userAgent}) async {
    Object postBody = body;

    // verify required params are set
    if (qBRealmHostname == null) {
      throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }
    if (appId == null) {
      throw new ApiException(400, "Missing required param: appId");
    }

    // create path and map variables
    String path = "/apps/{appId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "appId" + "}", appId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
    headerParams["User-Agent"] = userAgent;
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["*/*"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return new Map<String, Object>.from(
          apiClient.deserialize(response.body, 'Map<String, Object>'));
    } else {
      return null;
    }
  }
}
