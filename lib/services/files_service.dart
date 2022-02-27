
import 'dart:convert';

import 'package:another_quickbase/another_quickbase_models.dart';
import 'package:another_quickbase/api_exception.dart';
import 'package:http/http.dart' as http;

class FileService {

  final String qBRealmHostname;
  final String baseUrl;

  FileService({required this.qBRealmHostname, required this.baseUrl});

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
        baseUrl, "v1/files/$tableId/$recordId/$fieldId/$versionNumber");

    //print (endpoint.toString());

    var response = await
    http.get(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return response.body;
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
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
        baseUrl, "v1/files/$tableId/$recordId/$fieldId/$versionNumber");

    //print (endpoint.toString());

    var response = await
    http.delete(endpoint, headers: headers);

    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    else if (response.statusCode == 200) {
      print (jsonDecode(response.body));
      return DeleteFileResponse.fromJson(jsonDecode(response.body));
    }
    else {
      print (response.body);
      throw ApiException(response.statusCode, response.body);
    }
  }

}