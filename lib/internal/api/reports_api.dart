part of swagger.api;



class ReportsApi {
  final ApiClient apiClient;

  ReportsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a report
  ///
  /// Get the schema (properties) of an individual report.
  Future<Map<String, Object>> getReport(String reportId, String tableId, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(reportId == null) {
     throw new ApiException(400, "Missing required param: reportId");
    }
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/reports/{reportId}".replaceAll("{format}","json").replaceAll("{" + "reportId" + "}", reportId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "tableId", tableId));
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
headerParams["User-Agent"] = userAgent;
headerParams["Authorization"] = authorization;

    List<String> contentTypes = [];

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
                                             'GET',
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
  /// Get reports for a table
  ///
  /// Get the schema (properties) of all reports for a table. If the user running the API is an application administrator, the API will also return all personal reports with owner&#x27;s user id.
  Future<List<InlineResponse2002>> getTableReports(String tableId, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/reports".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "tableId", tableId));
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
headerParams["User-Agent"] = userAgent;
headerParams["Authorization"] = authorization;

    List<String> contentTypes = [];

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
                                             'GET',
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
        (apiClient.deserialize(response.body, 'List<InlineResponse2002>') as List).map((item) => item as InlineResponse2002).toList();
    } else {
      return null;
    }
  }
  /// Run a report
  ///
  /// Runs a report, based on an ID and returns the underlying data associated with it. The format of the data will vary based on the report type. Reports that focus on record-level data (table, calendar, etc.) return the individual records. Aggregate reports (summary, chart) will return the summarized information as configured in the report. UI-specific elements are not returned, such as totals, averages and visualizations. Returns data with intelligent pagination based on the approximate size of each record. The metadata object will include the necessary information to iterate over the response and gather more data.
  Future<Map<String, Object>> runReport(String qBRealmHostname, String authorization, String tableId, String reportId, { Object body, String userAgent, int skip, int top }) async {
    Object postBody = body;

    // verify required params are set
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }
    if(reportId == null) {
     throw new ApiException(400, "Missing required param: reportId");
    }

    // create path and map variables
    String path = "/reports/{reportId}/run".replaceAll("{format}","json").replaceAll("{" + "reportId" + "}", reportId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "tableId", tableId));
    if(skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "skip", skip));
    }
    if(top != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "top", top));
    }
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
