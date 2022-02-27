
import 'dart:convert';

import 'package:another_quickbase/another_quickbase_models.dart';
import 'package:another_quickbase/api_exception.dart';
import 'package:http/http.dart' as http;

class UserService {

  final String qBRealmHostname;
  final String baseUrl;

  UserService({required this.qBRealmHostname, required this.baseUrl});

  /// Deny users
  ///
  /// Denies users access to the realm but leaves them listed
  /// in groups they have been added to.
  Future<DenyUsersResponse> denyUsers(
      {required List<String> userIds, String? authorization, String? userAgent }) async {

    // verify required params are set
    if(authorization == null) {
      throw ApiException(400, "Missing required param: authorization");
    }

    Map<String, String> headers = {
      "Authorization": authorization ?? "",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/users/deny");

    var response = await
    http.put(endpoint, body: userIds, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DenyUsersResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
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

    // verify required params are set
    if(authorization == null) {
      throw ApiException(400, "Missing required param: authorization");
    }

    Map<String, String> headers = {
      "Authorization": authorization ?? "",
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json',
      "QB-Realm-Hostname": qBRealmHostname,
      "User-Agent": userAgent?? ""

    };

    Uri endpoint = Uri.https(
        baseUrl, "v1/users/deny/$shouldDeleteFromGroups");

    var response = await
    http.put(endpoint, body: userIds, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DenyUsersResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }


}