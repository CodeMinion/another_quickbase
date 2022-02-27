
import 'dart:convert';

import 'package:another_quickbase/another_quickbase_models.dart';
import 'package:another_quickbase/api_exception.dart';
import 'package:http/http.dart' as http;

class FormulaService {

  final String qBRealmHostname;
  final String baseUrl;

  FormulaService({required this.qBRealmHostname, required this.baseUrl});


  /// Run a formula
  ///
  /// Allows running a formula via an API call. Use this method in
  /// custom code to get the value back of a formula without a
  /// discrete field on a record.
  ///
  Future<String> runFormula({
    required FormulaRunRequest body,
    String? authorization, String? userAgent }) async {
    Object postBody = body;

    // verify required params are set
    if(authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }

    Map<String, String> headers = {
      "Authorization": authorization ?? "",
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
      print (jsonDecode(response.body));
      return jsonDecode(response.body)["result"];
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

}