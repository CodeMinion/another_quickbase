import 'package:another_quickbase/another_quickbase_models.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:another_quickbase/another_quickbase.dart';

void main() {

  String realm = "builderprogram-fhernandez2292";
  String appToken = "b6uehv_p3pr_0_4ce4fxdqtbrrfcba7rr6b989j25";
  String appId = "br68wk99f";

  test('get app tables', () async {

    QuickBaseClient client = QuickBaseClient(qBRealmHostname: realm, appToken: appToken);
    await client.initialize();

    var result = await client.getAppTables(appId: appId);

    expect(result, isNotNull);
  });


  test('get app contacts table', () async {

    QuickBaseClient client = QuickBaseClient(qBRealmHostname: realm, appToken: appToken);
    await client.initialize();

    var contactTable = await client.getTable(tableId:"br68wmaaw" ,appId: appId);
    expect(contactTable, isNotNull);

    var contacts = await client.runQuery(request: RecordsQueryRequest(
      from: contactTable.id!
    ));

    expect(contacts, isNotNull);

  });
}
