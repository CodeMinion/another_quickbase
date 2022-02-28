library another_quickbase;
import 'dart:convert';

import 'package:another_quickbase/another_quickbase_models.dart';
import 'package:another_quickbase/api_exception.dart';
import 'package:http/http.dart' as http;

part 'services/apps_service.dart';
part 'services/auth_service.dart';
part 'services/fields_service.dart';
part 'services/files_service.dart';
part 'services/formulas_service.dart';
part 'services/records_service.dart';
part 'services/reports_service.dart';
part 'services/tables_service.dart';
part 'services/user_token_service.dart';
part 'services/users_service.dart';


class QuickBaseClient {
  final String _url = "api.quickbase.com";
  final String qBRealmHostname;
  late AppsService _appsService;
  late AuthService _authService;
  late FieldsService _fieldsService;
  late FileService _fileService;
  late FormulaService _formulaService;
  late RecordsService _recordsService;
  late ReportsService _reportsService;
  late TablesService _tablesService;
  late UserTokenService _userTokenService;
  late UserService _userService;

  late final String appAuthorization;
  QuickBaseClient({required this.qBRealmHostname, required appToken}){
    appAuthorization = "QB-USER-TOKEN $appToken";
  }

  /// Initializes the client
  Future<void> initialize() async {
    // TODO Initialize Services
    _appsService = AppsService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

    _authService = AuthService(qBRealmHostname: qBRealmHostname, baseUrl: _url, qBAppToken: appAuthorization);

    _fieldsService = FieldsService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

    _fileService = FileService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

    _formulaService = FormulaService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

    _recordsService = RecordsService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

    _reportsService = ReportsService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

    _tablesService = TablesService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

    _userTokenService = UserTokenService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

    _userService = UserService(qBRealmHostname: qBRealmHostname, baseUrl: _url, appAuthorization: appAuthorization);

  }

  // Apps

  /// Copy an app
  ///
  /// Copies the specified application. The new application will have
  /// the same schema as the original. See below for additional copy options.
  ///
  Future<AppResponse> copyApp(
      { required String appId,
        required AppIdCopyRequest request,
        String? userAgent, String? authorization}) async {
    return _appsService.copyApp(appId: appId, request: request, userAgent: userAgent, authorization: authorization);
  }

  /// Create an app
  ///
  /// Creates an application in an account. You must have application
  /// creation rights in the respective account. Main properties and
  /// application variables can be set with this API.
  ///
  Future<AppResponse> createApp(
      {required String appId,
        required AppUpsertRequest request,
        String? userAgent, String? authorization
      }) async {
    return _appsService.createApp(appId: appId, request: request, userAgent: userAgent, authorization: authorization);
  }

  /// Delete an app
  ///
  /// Deletes an entire application, including all of the tables and data.
  ///
  Future<String> deleteApp({
    required String appId,
    required String appName,
    String? authorization,
    String? userAgent}) async {
    return _appsService.deleteApp(appId: appId, appName: appName, authorization: authorization);
  }

  /// Get an app
  ///
  /// Returns the main properties of an application,
  /// including application variables.
  ///
  Future<AppResponse> getApp({
    required String appId, String? authorization, String? userAgent
  }) async {
    return _appsService.getApp(appId: appId, authorization: authorization, userAgent: userAgent);
  }

  /// Get app events
  ///
  /// Get a list of events that can be triggered based on data or user
  /// actions in this application, includes: Email notification, Reminders,
  /// Subscriptions, QB Actions, Webhooks, record change triggered Automations
  /// (does not include scheduled).
  ///
  Future<List<AppEvent>> getAppEvents({
    required String appId,
    String? authorization,
    String? userAgent}) async {
    return _appsService.getAppEvents(appId: appId, authorization: authorization, userAgent: userAgent);
  }

  /// Update an app
  ///
  /// Updates the main properties and/or application
  /// variables for a specific application. Any properties of
  /// the app that you do not specify in the request body will remain unchanged.
  ///
  Future<AppResponse> updateApp({
    required String appId, String? authorization,
    required AppUpsertRequest request, String? userAgent}) async {
    return _appsService.updateApp(appId: appId, request: request, authorization: authorization, userAgent: userAgent);
  }

  // Auth
  Future<String> getTempTokenDBID({
    required String dbid, String? userAgent
  }) async {
    return _authService.getTempTokenDBID(dbid: dbid, userAgent: userAgent);
  }

  // Fields

  /// Create a field
  ///
  /// Creates a field within a table, including the custom
  /// permissions of that field.
  ///
  Future<FieldResponse> createField({
    required String? tableId, required FieldsUpsertRequest request,
    String? authorization,  String? userAgent }) async {
    return _fieldsService.createField(tableId: tableId, request: request, authorization: authorization, userAgent: userAgent);
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
    return _fieldsService.deleteFields(tableId: tableId, request: request, authorization: authorization, userAgent: userAgent);
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
    return _fieldsService.getField(fieldId: fieldId, tableId: tableId, includeFieldPerms: includeFieldPerms, userAgent: userAgent);
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
    return _fieldsService.getFieldUsage(fieldId: fieldId, tableId: tableId, authorization: authorization, userAgent: userAgent);
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
    return _fieldsService.getFields(tableId: tableId, includeFieldPerms: includeFieldPerms, authorization: authorization, userAgent: userAgent);
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
    return _fieldsService.getFieldsUsage(tableId: tableId, request: request, authorization: authorization, userAgent: userAgent);
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
    return _fieldsService.updateField(tableId: tableId, fieldId: fieldId, request: request, authorization: authorization, userAgent: userAgent);
  }

  // Files
  /// Delete file
  ///
  /// Deletes one file attachment version. Meta-data about files
  /// can be retrieved from the /records and /reports endpoints,
  /// where applicable. Use those endpoints to get the necessary
  /// information to delete file versions.
  ///
  Future<String> deleteFile({
    required String tableId,
    required int recordId,
    required int fieldId,
    required int versionNumber,
    String? authorization, String? userAgent }) async {
    return _fileService.deleteFile(tableId: tableId, recordId: recordId, fieldId: fieldId, versionNumber: versionNumber, authorization: authorization, userAgent: userAgent);
  }

  /// Download file
  ///
  /// Downloads the file attachment, with the file attachment
  /// content encoded in base64 format. The API response
  /// returns the file name in the &#x60;Content-Disposition&#x60;
  /// header. Meta-data about files can be retrieved from the /records and
  /// /reports endpoints, where applicable. Use those endpoints to get the
  /// necessary information to fetch files.
  ///
  Future<DeleteFileResponse> downloadFile({
    required String tableId, required int recordId,
    required int fieldId, required int versionNumber,
    String? authorization,
    String? userAgent }) async {
    return _fileService.downloadFile(tableId: tableId, recordId: recordId, fieldId: fieldId, versionNumber: versionNumber, authorization: authorization, userAgent: userAgent);
  }

  // Formulas
  /// Run a formula
  ///
  /// Allows running a formula via an API call. Use this method in
  /// custom code to get the value back of a formula without a
  /// discrete field on a record.
  ///
  Future<String> runFormula({
    required FormulaRunRequest body,
    String? authorization, String? userAgent }) async {
    return _formulaService.runFormula(body: body, authorization: authorization, userAgent: userAgent);
  }

  // Records
  /// Delete record(s)
  ///
  /// Deletes record(s) in a table based on a query. Alternatively, all records in the table can be deleted.
  Future<int> deleteRecords({
    required RecordsDeleteRequest request, String? authorization,
    String? userAgent
  }) async {
    return _recordsService.deleteRecords(request: request, authorization: authorization, userAgent: userAgent);
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
    return _recordsService.runQuery(request: request, authorization: authorization, userAgent: userAgent);
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
    return _recordsService.upsert(request: request, authorization: authorization, userAgent: userAgent);
  }

  // Reports
  /// Get a report
  ///
  /// Get the schema (properties) of an individual report.
  ///
  Future<ReportResponse> getReport({
    required String reportId, required String tableId,
    String? authorization, String? userAgent }) async {
    return _reportsService.getReport(reportId: reportId, tableId: tableId, authorization: authorization, userAgent: userAgent);
  }

  /// Get reports for a table
  ///
  /// Get the schema (properties) of all reports for a table.
  /// If the user running the API is an application administrator,
  /// the API will also return all personal reports with owner&#x27;s
  /// user id.
  ///
  Future<List<ReportResponse>> getTableReports({
    required String tableId, String? authorization, String? userAgent
  }) async {
    return _reportsService.getTableReports(tableId: tableId, authorization: authorization, userAgent: userAgent);
  }

  /// Run a report
  ///
  /// Runs a report, based on an ID and returns the underlying
  /// data associated with it. The format of the data will vary
  /// based on the report type. Reports that focus on record-level
  /// data (table, calendar, etc.) return the individual records.
  /// Aggregate reports (summary, chart) will return the summarized
  /// information as configured in the report. UI-specific elements
  /// are not returned, such as totals, averages and visualizations.
  /// Returns data with intelligent pagination based on the approximate
  /// size of each record. The metadata object will include the necessary
  /// information to iterate over the response and gather more data.
  ///
  Future<RunReportResponse> runReport({
    required RunReportRequest request, required String reportId,
    String? authorization,
    String? userAgent}) async {
    return _reportsService.runReport(request: request, reportId: reportId, authorization: authorization, userAgent: userAgent);
  }

  // Tables

  /// Create a relationship
  ///
  /// Creates a relationship in a table as well as
  /// lookup/summary fields. Relationships can only be
  /// created for tables within the same app.
  ///
  Future<TableRelationshipResponse> createRelationship({
    required String tableId, required TableIdRelationshipRequest request,
    String? authorization, String? userAgent }) async {
    return _tablesService.createRelationship(tableId: tableId, request: request, authorization: authorization, userAgent: userAgent);
  }

  /// Create a table
  ///
  /// Creates a table in an application.
  Future<TableResponse> createTable({
    required String appId,
    required TablesUpsertRequest request, String? authorization, String? userAgent }) async {
    return _tablesService.createTable(appId: appId, request: request, authorization: authorization, userAgent: userAgent);
  }

  /// Delete a table
  ///
  /// Deletes a specific table in an application,
  /// including all of the data within it.
  ///
  Future<String> deleteTable({
    required String tableId, required String appId,
    String? authorization, String? userAgent }) async {
    return _tablesService.deleteTable(tableId: tableId, appId: appId, authorization: authorization, userAgent: userAgent);
  }

  /// Get tables for an app
  ///
  /// Gets a list of all the tables that exist in a specific application.
  /// The properties for each table are the same as what is returned in
  /// Get table.
  ///
  Future<List<TableResponse>> getAppTables({
    required String appId, String? authorization,  String? userAgent }) async {
    return _tablesService.getAppTables(appId: appId, authorization: authorization, userAgent: userAgent);
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
    return _tablesService.getRelationships(tableId: tableId, authorization: authorization, skip: skip, userAgent: userAgent);
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
    return _tablesService.getTable(tableId: tableId, appId: appId, authorization: authorization, userAgent: userAgent);
  }

  /// Update a relationship
  ///
  /// Use this endpoint to add lookup fields and summary fields to an existing relationship. Updating a relationship will not delete existing lookup/summary fields.
  Future<TableRelationshipResponse> updateRelationship({
    required String tableId,
    required int relationshipId,
    required TableIdRelationshipRequest request,
    String? authorization,  String? userAgent }) async {
    return _tablesService.updateRelationship(tableId: tableId, relationshipId: relationshipId, request: request, authorization: authorization, userAgent: userAgent);
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
    return _tablesService.updateTable(appId: appId, tableId: tableId, request: request, authorization: authorization, userAgent: userAgent);
  }

  // User Token

  /// Clone a user token
  ///
  /// Clones the authenticated user token. All applications
  /// associated with that token are automatically associated with the
  /// new token.
  ///
  Future<UserTokenResponse> cloneUserToken({
    required UserTokenCloneRequest request,
    required String authorization,
    String? userAgent }) async {
    return _userTokenService.cloneUserToken(request: request, authorization: authorization, userAgent: userAgent);
  }

  /// Deactivate a user token
  ///
  /// Deactivates the authenticated user token.
  /// Once this is done, the user token must be reactivated
  /// in the user interface.
  ///
  Future<int> deactivateUserToken({
    required String authorization, String? userAgent }) async {
    return _userTokenService.deactivateUserToken(authorization: authorization, userAgent: userAgent);
  }

  /// Delete a user token
  ///
  /// Deletes the authenticated user token. This is not reversible.
  ///
  Future<Map<String, Object>> deleteUserToken(
      { required String authorization, String? userAgent }) async {
    return _userTokenService.deleteUserToken(authorization: authorization, userAgent: userAgent);
  }

  // Users
  /// Deny users
  ///
  /// Denies users access to the realm but leaves them listed
  /// in groups they have been added to.
  Future<DenyUsersResponse> denyUsers(
      {required List<String> userIds, String? authorization, String? userAgent }) async {
    return _userService.denyUsers(userIds: userIds, authorization: authorization, userAgent: userAgent);
  }

  /// Deny and remove users from groups
  ///
  /// Denies users access to the realm and allows you to remove
  /// them from groups.
  ///
  Future<DenyUsersResponse> denyUsersAndGroups({
    required bool shouldDeleteFromGroups,
    required List<String> userIds,
    String? authorization,
    String? userAgent }) async {
    return _userService.denyUsersAndGroups(shouldDeleteFromGroups: shouldDeleteFromGroups, userIds: userIds, authorization: authorization, userAgent: userAgent);
  }
}