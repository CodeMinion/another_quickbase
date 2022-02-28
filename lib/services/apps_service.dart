part of '../another_quickbase.dart';

class AppsService {

  final String qBRealmHostname;
  final String baseUrl;
  final String appAuthorization;

  AppsService({required this.qBRealmHostname, required this.baseUrl, required this.appAuthorization});

  /// Copy an app
  ///
  /// Copies the specified application. The new application will have
  /// the same schema as the original. See below for additional copy options.
  ///
  Future<AppResponse> copyApp(
      { required String appId,
        required AppIdCopyRequest request,
        String? userAgent, String? authorization}) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/apps/$appId/copy");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:jsonEncode(request.toJson()), headers: headers);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return AppResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Create an app
  ///
  /// Creates an application in an account. You must have application
  /// creation rights in the respective account. Main properties and
  /// application variables can be set with this API.
  ///
  Future<AppResponse> createApp(
      {required String appId,
        required AppUpsertRequest request,
        String? userAgent, String? authorization
      }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/apps");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body:jsonEncode(request.toJson()), headers: headers);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return AppResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Delete an app
  ///
  /// Deletes an entire application, including all of the tables and data.
  ///
  Future<String> deleteApp({
    required String appId,
    required String appName,
    String? authorization,
    String? userAgent}) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/apps/$appId");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, body: {"name":appName}, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return jsonDecode(response.body)["deletedAppId"];
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Get an app
  ///
  /// Returns the main properties of an application,
  /// including application variables.
  ///
  Future<AppResponse> getApp({
    required String appId, String? authorization, String? userAgent
  }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/apps/$appId");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return AppResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Get app events
  ///
  /// Get a list of events that can be triggered based on data or user
  /// actions in this application, includes: Email notification, Reminders,
  /// Subscriptions, QB Actions, Webhooks, record change triggered Automations
  /// (does not include scheduled).
  ///
  Future<List<AppEvent>> getAppEvents({
    required String appId,
    String? authorization,
        String? userAgent}) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent ?? ""
    };

    var params = {
      "appId": appId
    };
    Uri endpoint = Uri.https(
        baseUrl, "v1/apps/$appId/events", params);

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List).map((e) =>
          AppEvent.fromJson(e)).toList();
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Update an app
  ///
  /// Updates the main properties and/or application
  /// variables for a specific application. Any properties of
  /// the app that you do not specify in the request body will remain unchanged.
  ///
  Future<AppResponse> updateApp({
    required String appId, String? authorization,
    required AppUpsertRequest request, String? userAgent}) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/apps/$appId");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return AppResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }
}