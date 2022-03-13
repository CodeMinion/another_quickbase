part of '../another_quickbase.dart';

class FieldsService {

  final String qBRealmHostname;
  final String baseUrl;
  final String appAuthorization;

  FieldsService({required this.qBRealmHostname, required this.baseUrl, required this.appAuthorization});

  /// Create a field
  ///
  /// Creates a field within a table, including the custom
  /// permissions of that field.
  ///
  Future<FieldResponse> createField({
    required String? tableId, required FieldsUpsertRequest request,
    String? authorization,  String? userAgent }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/fields?tableId=$tableId");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return FieldResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }

  }

  /// Delete field(s)
  ///
  /// Deletes one or many fields in a table, based on field id.
  /// This will also permanently delete any data or calculations
  /// in that field.
  ///
  Future<FieldsDeletedResponse> deleteFields({
    required String tableId, required FieldsRequest request,
    String? authorization,
    String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/fields?tableId={tableId}");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return FieldsDeletedResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }

  }


  ///
  /// Get field
  ///
  /// Gets the properties of an individual field, based on field id.
  /// Properties present on all field types are returned at the top level.
  /// Properties unique to a specific type of field are returned under
  /// the &#x27;properties&#x27; attribute. Please see
  /// [Field types page](../fieldInfo) for more details on
  /// the properties for each field type.
  ///
  Future<FieldResponse> getField(
      {
        required int fieldId, required String tableId,
        String? authorization,
        bool? includeFieldPerms, String? userAgent }
      ) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""
    };

    Map<String, dynamic>? params;

    if (includeFieldPerms != null) {
      params = {
        "includeFieldPerms":includeFieldPerms
      };
    }

    Uri endpoint = Uri.https(
        baseUrl, "v1/fields/$fieldId?tableId=$tableId", params);

    var response = await http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return FieldResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Get usage for a field
  ///
  /// Get a single fields usage statistics. This is a summary of
  /// the information that can be found in the usage table of field properties.
  ///
  Future<FieldUsageResponse> getFieldUsage({
      required int fieldId,
        required String tableId,
    String? authorization, String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""
    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/fields/usage?tableId=$tableId");

    var response = await http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return FieldUsageResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Get fields for a table
  ///
  /// Gets the properties for all fields in a specific table.
  /// The properties for each field are the same as in Get field.
  ///
  Future<List<FieldResponse>> getFields({
    required String tableId,
    String? authorization,
    bool? includeFieldPerms, String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""
    };

    Map<String, dynamic>? params;

    if (includeFieldPerms != null) {
      params = {
        "includeFieldPerms": includeFieldPerms
      };
    }

    Uri endpoint = Uri.https(
        baseUrl, "v1/fields?tableId=$tableId", params);

    var response = await http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List).map((e) => FieldResponse.fromJson(e)).toList();
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Get usage for all fields
  ///
  /// Get all the field usage statistics for a table. This is a summary
  /// of the information that can be found in the usage table of
  /// field properties.
  ///
  Future<List<FieldUsageResponse>> getFieldsUsage(
      { required String tableId, String? authorization,
        GetFieldUsagesRequest? request, String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""
    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/fields/usage?tableId=$tableId", request?.toJson().toQueryParam());

    var response = await http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List).map((e) => FieldUsageResponse.fromJson(e)).toList();
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Update a field
  ///
  /// Updates the properties and custom permissions of a field.
  /// The attempt to update certain properties might cause existing
  /// data to no longer obey the field’s new properties and may be
  /// rejected. See the descriptions of required, unique, and choices,
  /// below, for specific situations. Any properties of the field that
  /// you do not specify in the request body will remain unchanged.
  ///
  Future<FieldResponse> updateField({
        required String tableId, required int fieldId,
        required FieldsUpsertRequest request, String? authorization, String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""
    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/fields/$fieldId?tableId=$tableId");

    var response = await http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return FieldResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

}