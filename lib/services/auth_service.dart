part of '../another_quickbase.dart';


class AuthService {

  final String qBRealmHostname;
  final String baseUrl;
  final String qBAppToken;

  AuthService({required this.qBRealmHostname, required this.baseUrl, required this.qBAppToken});

  /// Get a temporary token for a dbid
  ///
  /// Use this endpoint to get a temporary authorization token,
  /// scoped to either an app or a table. You can then use this token
  /// to make other API calls (see [authorization](../auth)).
  /// This token expires in 5 minutes.
  ///
  Future<String> getTempTokenDBID({
    required String dbid, String? userAgent
  }) async {

    Map<String, String> headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "QB-App-Token": qBAppToken,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/auth/temporary/$dbid");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint,  headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return jsonDecode(response.body)["temporaryAuthorization"];
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }
}