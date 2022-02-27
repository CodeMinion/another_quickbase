part of swagger.api;



class FilesApi {
  final ApiClient apiClient;

  FilesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Delete file
  ///
  /// Deletes one file attachment version. Meta-data about files can be retrieved from the /records and /reports endpoints, where applicable. Use those endpoints to get the necessary information to delete file versions.
  Future<Map<String, Object>> deleteFile(String tableId, int recordId, int fieldId, int versionNumber, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }
    if(recordId == null) {
     throw new ApiException(400, "Missing required param: recordId");
    }
    if(fieldId == null) {
     throw new ApiException(400, "Missing required param: fieldId");
    }
    if(versionNumber == null) {
     throw new ApiException(400, "Missing required param: versionNumber");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/files/{tableId}/{recordId}/{fieldId}/{versionNumber}".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString()).replaceAll("{" + "recordId" + "}", recordId.toString()).replaceAll("{" + "fieldId" + "}", fieldId.toString()).replaceAll("{" + "versionNumber" + "}", versionNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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

  /// Download file
  ///
  /// Downloads the file attachment, with the file attachment content encoded in base64 format. The API response returns the file name in the &#x60;Content-Disposition&#x60; header. Meta-data about files can be retrieved from the /records and /reports endpoints, where applicable. Use those endpoints to get the necessary information to fetch files.
  Future<Object> downloadFile(String tableId, int recordId, int fieldId, int versionNumber, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }
    if(recordId == null) {
     throw new ApiException(400, "Missing required param: recordId");
    }
    if(fieldId == null) {
     throw new ApiException(400, "Missing required param: fieldId");
    }
    if(versionNumber == null) {
     throw new ApiException(400, "Missing required param: versionNumber");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/files/{tableId}/{recordId}/{fieldId}/{versionNumber}".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString()).replaceAll("{" + "recordId" + "}", recordId.toString()).replaceAll("{" + "fieldId" + "}", fieldId.toString()).replaceAll("{" + "versionNumber" + "}", versionNumber.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
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
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
}
