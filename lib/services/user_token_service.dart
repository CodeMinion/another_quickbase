part of '../another_quickbase.dart';


class UserTokenService {

  final String qBRealmHostname;
  final String baseUrl;
  final String appAuthorization;

  UserTokenService({required this.qBRealmHostname, required this.baseUrl, required this.appAuthorization});

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


    Map<String, String> headers = {
      "Authorization": authorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/usertoken/clone");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, body: jsonEncode(request.toJson()), headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return UserTokenResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Deactivate a user token
  ///
  /// Deactivates the authenticated user token.
  /// Once this is done, the user token must be reactivated
  /// in the user interface.
  ///
  Future<int> deactivateUserToken({
    required String authorization, String? userAgent }) async {

    // verify required params are set
    if(authorization == null) {
      throw ApiException(400, "Missing required param: authorization");
    }

    Map<String, String> headers = {
      "Authorization": authorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/usertoken/deactivate");

    //print (endpoint.toString());

    var response = await
    http.post(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return jsonDecode(response.body)["id"];
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

  /// Delete a user token
  ///
  /// Deletes the authenticated user token. This is not reversible.
  ///
  Future<Map<String, Object>> deleteUserToken(
      { required String authorization, String? userAgent }) async {

    Map<String, String> headers = {
      "Authorization": authorization,
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/usertokene");

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return jsonDecode(response.body)["id"];
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }

  }


}