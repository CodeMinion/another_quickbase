part of swagger.api;



class FormulasApi {
  final ApiClient apiClient;

  FormulasApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Run a formula
  ///
  /// Allows running a formula via an API call. Use this method in custom code to get the value back of a formula without a discrete field on a record.
  Future<Map<String, Object>> runFormula(String qBRealmHostname, String authorization, { FormulaRunBody body, String userAgent }) async {
    Object postBody = body;

    // verify required params are set
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/formula/run".replaceAll("{format}","json");

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
