part of swagger.api;



class TablesApi {
  final ApiClient apiClient;

  TablesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Create a relationship
  ///
  /// Creates a relationship in a table as well as lookup/summary fields. Relationships can only be created for tables within the same app.
  Future<Map<String, Object>> createRelationship(String qBRealmHostname, String authorization, String tableId, { TableIdRelationshipBody body, String userAgent }) async {
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
    String path = "/tables/{tableId}/relationship".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString());

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
  /// Create a table
  ///
  /// Creates a table in an application.
  Future<Map<String, Object>> createTable(String qBRealmHostname, String authorization, String appId, { TablesBody body, String userAgent }) async {
    Object postBody = body;

    // verify required params are set
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }
    if(appId == null) {
     throw new ApiException(400, "Missing required param: appId");
    }

    // create path and map variables
    String path = "/tables".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "appId", appId));
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
  /// Delete a relationship
  ///
  /// Use this endpoint to delete an entire relationship, including all lookup and summary fields. The reference field in the relationship will not be deleted.
  Future<Map<String, Object>> deleteRelationship(String tableId, double relationshipId, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }
    if(relationshipId == null) {
     throw new ApiException(400, "Missing required param: relationshipId");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/tables/{tableId}/relationship/{relationshipId}".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString()).replaceAll("{" + "relationshipId" + "}", relationshipId.toString());

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
  /// Delete a table
  ///
  /// Deletes a specific table in an application, including all of the data within it.
  Future<Map<String, Object>> deleteTable(String tableId, String appId, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }
    if(appId == null) {
     throw new ApiException(400, "Missing required param: appId");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/tables/{tableId}".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "appId", appId));
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
  /// Get tables for an app
  ///
  /// Gets a list of all the tables that exist in a specific application. The properties for each table are the same as what is returned in Get table.
  Future<List<InlineResponse2001>> getAppTables(String appId, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(appId == null) {
     throw new ApiException(400, "Missing required param: appId");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/tables".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "appId", appId));
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
        (apiClient.deserialize(response.body, 'List<InlineResponse2001>') as List).map((item) => item as InlineResponse2001).toList();
    } else {
      return null;
    }
  }
  /// Get all relationships
  ///
  /// Get a list of all relationships, and their definitions, for a specific table. Details are provided for both the parent and child sides of relationships within a given application. Limited details are returned for cross-application relationships.
  Future<Map<String, Object>> getRelationships(String tableId, String qBRealmHostname, String authorization, { int skip, String userAgent }) async {
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
    String path = "/tables/{tableId}/relationships".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(skip != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "skip", skip));
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
  /// Get a table
  ///
  /// Gets the properties of an individual table that is part of an application.
  Future<Map<String, Object>> getTable(String tableId, String appId, String qBRealmHostname, String authorization, { String userAgent }) async {
    Object postBody = null;

    // verify required params are set
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }
    if(appId == null) {
     throw new ApiException(400, "Missing required param: appId");
    }
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/tables/{tableId}".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "appId", appId));
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
  /// Update a relationship
  ///
  /// Use this endpoint to add lookup fields and summary fields to an existing relationship. Updating a relationship will not delete existing lookup/summary fields.
  Future<Map<String, Object>> updateRelationship(String qBRealmHostname, String authorization, String tableId, double relationshipId, { RelationshipRelationshipIdBody body, String userAgent }) async {
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
    if(relationshipId == null) {
     throw new ApiException(400, "Missing required param: relationshipId");
    }

    // create path and map variables
    String path = "/tables/{tableId}/relationship/{relationshipId}".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString()).replaceAll("{" + "relationshipId" + "}", relationshipId.toString());

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
  /// Update a table
  ///
  /// Updates the main properties of a specific table. Any properties of the table that you do not specify in the request body will remain unchanged.
  Future<Map<String, Object>> updateTable(String qBRealmHostname, String authorization, String appId, String tableId, { TablesTableIdBody body, String userAgent }) async {
    Object postBody = body;

    // verify required params are set
    if(qBRealmHostname == null) {
     throw new ApiException(400, "Missing required param: qBRealmHostname");
    }
    if(authorization == null) {
     throw new ApiException(400, "Missing required param: authorization");
    }
    if(appId == null) {
     throw new ApiException(400, "Missing required param: appId");
    }
    if(tableId == null) {
     throw new ApiException(400, "Missing required param: tableId");
    }

    // create path and map variables
    String path = "/tables/{tableId}".replaceAll("{format}","json").replaceAll("{" + "tableId" + "}", tableId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "appId", appId));
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
