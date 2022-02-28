part of '../another_quickbase.dart';

class ReportsService {

  final String qBRealmHostname;
  final String baseUrl;
  final String appAuthorization;


  ReportsService({required this.qBRealmHostname, required this.baseUrl, required this.appAuthorization});



  /// Get a report
  ///
  /// Get the schema (properties) of an individual report.
  ///
  Future<ReportResponse> getReport({
      required String reportId, required String tableId,
      String? authorization, String? userAgent }) async {


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/reports/$reportId?tableId=$tableId");

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return ReportResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
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


    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/reports?tableId=$tableId");

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return (jsonDecode(response.body) as List).map((e) => ReportResponse.fromJson(e)).toList();
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
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

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/reports/$reportId/run", request.toJson());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return RunReportResponse.fromJson(jsonDecode(response.body));
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

}