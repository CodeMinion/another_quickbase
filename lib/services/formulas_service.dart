part of '../another_quickbase.dart';


class FormulaService {

  final String qBRealmHostname;
  final String baseUrl;
  final String appAuthorization;


  FormulaService({required this.qBRealmHostname, required this.baseUrl, required this.appAuthorization});


  /// Run a formula
  ///
  /// Allows running a formula via an API call. Use this method in
  /// custom code to get the value back of a formula without a
  /// discrete field on a record.
  ///
  Future<String> runFormula({
    required FormulaRunRequest body,
    String? authorization, String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization ?? appAuthorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/formula/run");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      return jsonDecode(response.body)["result"];
    }
    else {
      throw ApiException(response.statusCode, response.body);
    }
  }

}