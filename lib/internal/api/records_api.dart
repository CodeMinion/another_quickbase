part of swagger.api;



class RecordsApi {
  final ApiClient apiClient;

  RecordsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete record(s)
  ///
  /// Deletes record(s) in a table based on a query. Alternatively, all records in the table can be deleted.
  Future<Map<String, Object>> deleteRecords(String qBRealmHostname, String authorization, { RecordsBody1 body, String userAgent }) async {
    Object postBody = body;

    // verify required params are set
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/records".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
headerParams["User-Agent"] = userAgent;
headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["*/*"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          new Map<String, Object>.from(apiClient.deserialize(response.body, 'Map<String, Object>')) ;
    } else {
      return null;
    }
  }
  /// Query for data
  ///
  /// Pass in a query in the [Quickbase query language](https://help.quickbase.com/api-guide/componentsquery.html). Returns record data with [intelligent pagination](../pagination) based on the approximate size of each record. The metadata object will include the necessary information to iterate over the response and gather more data.
  Future<Map<String, Object>> runQuery(String qBRealmHostname, String authorization, { RecordsQueryBody body, String userAgent }) async {
    Object postBody = body;

    // verify required params are set
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/records/query".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
headerParams["User-Agent"] = userAgent;
headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["*/*"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          new Map<String, Object>.from(apiClient.deserialize(response.body, 'Map<String, Object>')) ;
    } else {
      return null;
    }
  }
  /// Insert/Update record(s)
  ///
  /// Insert and/or update record(s) in a table. In this single API call, inserts and updates can be submitted. Update can use the key field on the table, or any other supported unique field. Refer to the [Field types page](../fieldInfo) for more information about how each field type should be formatted. This operation allows for incremental processing of successful records, even when some of the records fail.   **Note:** This endpoint supports a maximum payload size of 10MB.
  Future<Map<String, Object>> upsert(String qBRealmHostname, String authorization, { RecordsBody body, String userAgent }) async {
    Object postBody = body;

    // verify required params are set
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/records".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
headerParams["User-Agent"] = userAgent;
headerParams["Authorization"] = authorization;

    List<String> contentTypes = ["*/*"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          new Map<String, Object>.from(apiClient.deserialize(response.body, 'Map<String, Object>')) ;
    } else {
      return null;
    }
  }
}
