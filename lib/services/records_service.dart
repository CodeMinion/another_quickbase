part of '../another_quickbase.dart';

class RecordsService {

  final String qBRealmHostname;
  final String baseUrl;
  final String appAuthorization;


  RecordsService({required this.qBRealmHostname, required this.baseUrl, required this.appAuthorization});

  /// Delete record(s)
  ///
  /// Deletes record(s) in a table based on a query. Alternatively, all records in the table can be deleted.
  Future<int> deleteRecords({
    required RecordsDeleteRequest request, String? authorization,
        String? userAgent
  }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/records");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return jsonDecode(response.body)["numberDeleted"];
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Query for data
  ///
  /// Pass in a query in the
  /// [Quickbase query language](https://help.quickbase.com/api-guide/componentsquery.html).
  /// Returns record data with [intelligent pagination](../pagination) based
  /// on the approximate size of each record. The metadata object will
  /// include the necessary information to iterate over the response and
  /// gather more data.
  ///
  Future<RecordsQueryResponse> runQuery(
      { required RecordsQueryRequest request,
        String? authorization, String? userAgent }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/records/query");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return RecordsQueryResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Insert/Update record(s)
  ///
  /// Insert and/or update record(s) in a table.
  /// In this single API call, inserts and updates
  /// can be submitted. Update can use the key field
  /// on the table, or any other supported unique field.
  /// Refer to the [Field types page](../fieldInfo) for
  /// more information about how each field type should be
  /// formatted. This operation allows for incremental
  /// processing of successful records, even when some of the
  /// records fail.
  /// **Note:** This endpoint supports a maximum payload size of 10MB.
  ///
  Future<RecordsUpsertResponse> upsert({
    required RecordsUpsertRequest request,
    String? authorization, String? userAgent }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/records");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return RecordsUpsertResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

}