part of '../another_quickbase.dart';

class TablesService {

  final String qBRealmHostname;
  final String baseUrl;
  final String appAuthorization;

  TablesService({required this.qBRealmHostname, required this.baseUrl, required this.appAuthorization});


  /// Create a relationship
  ///
  /// Creates a relationship in a table as well as
  /// lookup/summary fields. Relationships can only be
  /// created for tables within the same app.
  ///
  Future<TableRelationshipResponse> createRelationship({
    required String tableId, required TableIdRelationshipRequest request,
    String? authorization, String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/tables/$tableId/relationship");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TableRelationshipResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }

  }

  /// Create a table
  ///
  /// Creates a table in an application.
  Future<TableResponse> createTable({
    required String appId,
    required TablesUpsertRequest request, String? authorization, String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/tables", {"appId": appId});

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TableResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Delete a table
  ///
  /// Deletes a specific table in an application,
  /// including all of the data within it.
  ///
  Future<String> deleteTable({
    required String tableId, required String appId,
    String? authorization, String? userAgent }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/tables/$tableId", {"appId": appId});

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint,  headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return jsonDecode(response.body)["deletedTableId"];
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Get tables for an app
  ///
  /// Gets a list of all the tables that exist in a specific application.
  /// The properties for each table are the same as what is returned in
  /// Get table.
  ///
  Future<List<TableResponse>> getAppTables({
      required String appId, String? authorization,  String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/tables", {"appId": appId});

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return (jsonDecode(response.body) as List).map((e) => TableResponse.fromJson(e)).toList();
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Get all relationships
  ///
  /// Get a list of all relationships, and their
  /// definitions, for a specific table. Details
  /// are provided for both the parent and child sides
  /// of relationships within a given application. Limited
  /// details are returned for cross-application relationships.
  ///
  Future<RelationShipListResponse> getRelationships({
    required String tableId, String? authorization, int? skip, String? userAgent }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Map<String, dynamic>? params;

    if (skip != null) {
      params = {"skip": skip};
    }

    Uri endpoint = Uri.https(
        baseUrl, "v1/tables/{tableId}/relationships", params);

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return RelationShipListResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Get a table
  ///
  /// Gets the properties of an individual table that is part
  /// of an application.
  ///
  Future<TableResponse> getTable({
      required String tableId, required String appId,
    String? authorization, String? userAgent
  }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/tables/$tableId", {"appId": appId});

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TableResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Update a relationship
  ///
  /// Use this endpoint to add lookup fields and summary fields to an existing relationship. Updating a relationship will not delete existing lookup/summary fields.
  Future<TableRelationshipResponse> updateRelationship({
      required String tableId,
    required int relationshipId,
    required TableIdRelationshipRequest request,
    String? authorization,  String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/tables/$tableId/relationship/$relationshipId");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()),  headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TableRelationshipResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Update a table
  ///
  /// Updates the main properties of a specific table.
  /// Any properties of the table that you do not specify
  /// in the request body will remain unchanged.
  ///
  Future<TableResponse> updateTable({
      required String appId,
    required String tableId,
    required TablesUpsertRequest request,
    String? authorization,  String? userAgent }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/tables/$tableId", {"appId": appId});

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return TableResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

}