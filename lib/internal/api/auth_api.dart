part of swagger.api;



class AuthApi {
  final ApiClient apiClient;

  AuthApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Get a temporary token for a dbid
  ///
  /// Use this endpoint to get a temporary authorization token, scoped to either an app or a table. You can then use this token to make other API calls (see [authorization](../auth)).  This token expires in 5 minutes.
  Future<Map<String, Object>> getTempTokenDBID(String dbid, String qBRealmHostname, { String userAgent, String qBAppToken }) async {
    Object postBody = null;

    // verify required params are set
    if(dbid == null) {
     throw new ApiException(400, "Missing required param: dbid");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }

    // create path and map variables
    String path = "/auth/temporary/{dbid}".replaceAll("{format}","json").replaceAll("{" + "dbid" + "}", dbid.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["QB-Realm-Hostname"] = qBRealmHostname;
headerParams["User-Agent"] = userAgent;
headerParams["QB-App-Token"] = qBAppToken;

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
}
