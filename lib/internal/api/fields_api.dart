part of swagger.api;



class FieldsApi {
  final ApiClient apiClient;

  FieldsApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a field
  ///
  /// Creates a field within a table, including the custom permissions of that field.
  Future<Map<String, Object>> createField(String qBRealmHostname, String authorization, String tableId, { FieldsBody body, String userAgent }) async {
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

    // create path and map variables
    String path = "/fields".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "tableId", tableId));
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
  /// Delete field(s)
  ///
  /// Deletes one or many fields in a table, based on field id. This will also permanently delete any data or calculations in that field.
  Future<Map<String, Object>> deleteFields(String qBRealmHostname, String authorization, String tableId, { FieldsBody1 body, String userAgent }) async {
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

    // create path and map variables
    String path = "/fields".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "tableId", tableId));
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
  /// Get field
  ///
  /// Gets the properties of an individual field, based on field id.   Properties present on all field types are returned at the top level. Properties unique to a specific type of field are returned under the &#x27;properties&#x27; attribute. Please see [Field types page](../fieldInfo) for more details on the properties for each field type.
  Future<Map<String, Object>> getField(int fieldId, String tableId, String qBRealmHostname, String authorization, { bool includeFieldPerms, String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(fieldId == null) {
     throw new ApiException(400, "Missing required param: fieldId");
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
    String path = "/fields/{fieldId}".replaceAll("{format}","json").replaceAll("{" + "fieldId" + "}", fieldId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "tableId", tableId));
    if(includeFieldPerms != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeFieldPerms", includeFieldPerms));
    }
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
  /// Get usage for a field
  ///
  /// Get a single fields usage statistics. This is a summary of the information that can be found in the usage table of field properties.
  Future<List<InlineResponse2004>> getFieldUsage(int fieldId, String tableId, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(fieldId == null) {
     throw new ApiException(400, "Missing required param: fieldId");
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
    String path = "/fields/usage/{fieldId}".replaceAll("{format}","json").replaceAll("{" + "fieldId" + "}", fieldId.toString());

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
        (apiClient.deserialize(response.body, 'List<InlineResponse2004>') as List).map((item) => item as InlineResponse2004).toList();
    } else {
      return null;
    }
  }
  /// Get fields for a table
  ///
  /// Gets the properties for all fields in a specific table.
  /// The properties for each field are the same as in Get field.
  Future<List<InlineResponse2003>> getFields(String tableId, String qBRealmHostname, String authorization, { bool includeFieldPerms, String userAgent }) async {
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
    String path = "/fields".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "tableId", tableId));
    if(includeFieldPerms != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "includeFieldPerms", includeFieldPerms));
    }
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
        (apiClient.deserialize(response.body, 'List<InlineResponse2003>') as List).map((item) => item as InlineResponse2003).toList();
    } else {
      return null;
    }
  }
  /// Get usage for all fields
  ///
  /// Get all the field usage statistics for a table. This is a summary of the information that can be found in the usage table of field properties.
  Future<List<InlineResponse2004>> getFieldsUsage(String tableId, String qBRealmHostname, String authorization, { int skip, int top, String userAgent }) async {
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
    String path = "/fields/usage".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<InlineResponse2004>') as List).map((item) => item as InlineResponse2004).toList();
    } else {
      return null;
    }
  }
  /// Update a field
  ///
  /// Updates the properties and custom permissions of a field. The attempt to update certain properties might cause existing data to no longer obey the field’s new properties and may be rejected. See the descriptions of required, unique, and choices, below, for specific situations. Any properties of the field that you do not specify in the request body will remain unchanged.
  Future<Map<String, Object>> updateField(String qBRealmHostname, String authorization, String tableId, int fieldId, { FieldsFieldIdBody body, String userAgent }) async {
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
    if(fieldId == null) {
     throw new ApiException(400, "Missing required param: fieldId");
    }

    // create path and map variables
    String path = "/fields/{fieldId}".replaceAll("{format}","json").replaceAll("{" + "fieldId" + "}", fieldId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "tableId", tableId));
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
