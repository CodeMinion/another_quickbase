// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'another_quickbase_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppIdCopyRequest _$AppIdCopyRequestFromJson(Map<String, dynamic> json) =>
    AppIdCopyRequest(
      description: json['description'] as String?,
      name: json['name'] as String?,
      properties: json['properties'] == null
          ? null
          : AppsappIdcopyProperties.fromJson(
              json['properties'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AppIdCopyRequestToJson(AppIdCopyRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('properties', instance.properties);
  return val;
}

AppsappIdcopyProperties _$AppsappIdcopyPropertiesFromJson(
        Map<String, dynamic> json) =>
    AppsappIdcopyProperties(
      assignUserToken: json['assignUserToken'] as bool?,
      excludeFiles: json['excludeFiles'] as bool?,
      keepData: json['keepData'] as bool?,
      usersAndRoles: json['usersAndRoles'] as bool?,
    );

Map<String, dynamic> _$AppsappIdcopyPropertiesToJson(
    AppsappIdcopyProperties instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('assignUserToken', instance.assignUserToken);
  writeNotNull('excludeFiles', instance.excludeFiles);
  writeNotNull('keepData', instance.keepData);
  writeNotNull('usersAndRoles', instance.usersAndRoles);
  return val;
}

AppResponse _$AppResponseFromJson(Map<String, dynamic> json) => AppResponse(
      name: json['name'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      created: json['created'] as String?,
      updated: json['updated'] as String?,
      dataClassification: json['dataClassification'] as String?,
      dateFormat: json['dateFormat'] as String?,
      hasEveryoneOnTheInternet: json['hasEveryoneOnTheInternet'] as bool?,
      timeZone: json['timeZone'] as String?,
      variables: (json['variables'] as List<dynamic>?)
          ?.map((e) => Variable.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppResponseToJson(AppResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('dateFormat', instance.dateFormat);
  writeNotNull('timeZone', instance.timeZone);
  writeNotNull('id', instance.id);
  writeNotNull('hasEveryoneOnTheInternet', instance.hasEveryoneOnTheInternet);
  writeNotNull('variables', instance.variables);
  writeNotNull('dataClassification', instance.dataClassification);
  return val;
}

Variable _$VariableFromJson(Map<String, dynamic> json) => Variable(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$VariableToJson(Variable instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}

AppUpsertRequest _$AppUpsertRequestFromJson(Map<String, dynamic> json) =>
    AppUpsertRequest(
      description: json['description'] as String?,
      name: json['name'] as String?,
      variables: (json['variables'] as List<dynamic>?)
          ?.map((e) => Variable.fromJson(e as Map<String, dynamic>))
          .toList(),
      assignToken: json['assignToken'] as String?,
    );

Map<String, dynamic> _$AppUpsertRequestToJson(AppUpsertRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('assignToken', instance.assignToken);
  writeNotNull('variables', instance.variables);
  return val;
}

AppEvent _$AppEventFromJson(Map<String, dynamic> json) => AppEvent(
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$AppEventTypeEnumMap, json['type']),
      url: json['url'] as String?,
      isActive: json['isActive'] as bool?,
      owner: json['owner'] == null
          ? null
          : User.fromJson(json['owner'] as Map<String, dynamic>),
      tableId: json['tableId'] as String?,
    );

Map<String, dynamic> _$AppEventToJson(AppEvent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isActive', instance.isActive);
  writeNotNull('type', _$AppEventTypeEnumMap[instance.type]);
  writeNotNull('name', instance.name);
  writeNotNull('url', instance.url);
  writeNotNull('owner', instance.owner);
  writeNotNull('tableId', instance.tableId);
  return val;
}

const _$AppEventTypeEnumMap = {
  AppEventType.webhook: 'webhook',
  AppEventType.qb_action: 'qb_action',
  AppEventType.email_notification: 'email-notification',
  AppEventType.subscription: 'subscription',
  AppEventType.reminder: 'reminder',
  AppEventType.automation: 'automation',
};

User _$UserFromJson(Map<String, dynamic> json) => User(
      name: json['name'] as String?,
      id: json['id'] as String?,
      email: json['email'] as String?,
      userName: json['userName'] as String?,
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('userName', instance.userName);
  return val;
}

FieldsUpsertRequest _$FieldsUpsertRequestFromJson(Map<String, dynamic> json) =>
    FieldsUpsertRequest(
      properties: json['properties'] == null
          ? null
          : FieldsProperties.fromJson(
              json['properties'] as Map<String, dynamic>),
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => FieldsPermissions.fromJson(e as Map<String, dynamic>))
          .toList(),
      label: json['label'] as String?,
      addToForms: json['addToForms'] as bool?,
      appearsByDefault: json['appearsByDefault'] as bool?,
      audited: json['audited'] as bool?,
      bold: json['bold'] as bool?,
      fieldHelp: json['fieldHelp'] as String?,
      fieldType: json['fieldType'] as String?,
      findEnabled: json['findEnabled'] as bool?,
      noWrap: json['noWrap'] as bool?,
    );

Map<String, dynamic> _$FieldsUpsertRequestToJson(FieldsUpsertRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('audited', instance.audited);
  writeNotNull('fieldHelp', instance.fieldHelp);
  writeNotNull('bold', instance.bold);
  writeNotNull('properties', instance.properties);
  writeNotNull('appearsByDefault', instance.appearsByDefault);
  writeNotNull('fieldType', instance.fieldType);
  writeNotNull('permissions', instance.permissions);
  writeNotNull('addToForms', instance.addToForms);
  writeNotNull('label', instance.label);
  writeNotNull('findEnabled', instance.findEnabled);
  writeNotNull('noWrap', instance.noWrap);
  return val;
}

FieldsProperties _$FieldsPropertiesFromJson(Map<String, dynamic> json) =>
    FieldsProperties(
      exact: json['exact'] as bool?,
      abbreviate: json['abbreviate'] as bool?,
      allowNewChoices: json['allowNewChoices'] as bool?,
      appearsAs: json['appearsAs'] as String?,
      appendOnly: json['appendOnly'] as bool?,
      autoSave: json['autoSave'] as bool?,
      blankIsZero: json['blankIsZero'] as bool?,
      carryChoices: json['carryChoices'] as bool?,
      choices:
          (json['choices'] as List<dynamic>?)?.map((e) => e as String).toList(),
      commaStart: json['commaStart'] as int?,
      comments: json['comments'] as String?,
      coverText: json['coverText'] as String?,
      currencyFormat: json['currencyFormat'] as String?,
      currencySymbol: json['currencySymbol'] as String?,
      decimalPlaces: json['decimalPlaces'] as int?,
      defaultCountryCode: json['defaultCountryCode'] as String?,
      defaultDomain: json['defaultDomain'] as String?,
      defaultKind: json['defaultKind'] as String?,
      defaultToday: json['defaultToday'] as bool?,
      defaultValue: json['defaultValue'] as String?,
      defaultValueLuid: json['defaultValueLuid'] as int?,
      displayAsLink: json['displayAsLink'] as bool?,
      displayDayOfWeek: json['displayDayOfWeek'] as bool?,
      displayEmail: json['displayEmail'] as String?,
      displayImages: json['displayImages'] as bool?,
      displayMonth: json['displayMonth'] as String?,
      displayRelative: json['displayRelative'] as bool?,
      displayTime: json['displayTime'] as bool?,
      displayTimezone: json['displayTimezone'] as bool?,
      displayUser: json['displayUser'] as String?,
      doesAverage: json['doesAverage'] as bool?,
      doesTotal: json['doesTotal'] as bool?,
      format: json['format'] as int?,
      formula: json['formula'] as String?,
      hasExtension: json['hasExtension'] as bool?,
      hours24: json['hours24'] as bool?,
      linkText: json['linkText'] as String?,
      maxLength: json['maxLength'] as int?,
      maxVersions: json['maxVersions'] as int?,
      numberFormat: json['numberFormat'] as int?,
      numLines: json['numLines'] as int?,
      parentFieldId: json['parentFieldId'] as int?,
      seeVersions: json['seeVersions'] as bool?,
      snapFieldId: json['snapFieldId'] as int?,
      sortAlpha: json['sortAlpha'] as bool?,
      sortAsGiven: json['sortAsGiven'] as bool?,
      sourceFieldId: json['sourceFieldId'] as int?,
      targetFieldId: json['targetFieldId'] as int?,
      targetTableId: json['targetTableId'] as String?,
      targetTableName: json['targetTableName'] as String?,
      units: json['units'] as String?,
      useI18NFormat: json['useI18NFormat'] as bool?,
      useNewWindow: json['useNewWindow'] as bool?,
      versionMode: json['versionMode'] as String?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$FieldsPropertiesToJson(FieldsProperties instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('comments', instance.comments);
  writeNotNull('doesTotal', instance.doesTotal);
  writeNotNull('autoSave', instance.autoSave);
  writeNotNull('defaultValueLuid', instance.defaultValueLuid);
  writeNotNull('useI18NFormat', instance.useI18NFormat);
  writeNotNull('maxVersions', instance.maxVersions);
  writeNotNull('format', instance.format);
  writeNotNull('carryChoices', instance.carryChoices);
  writeNotNull('maxLength', instance.maxLength);
  writeNotNull('linkText', instance.linkText);
  writeNotNull('parentFieldId', instance.parentFieldId);
  writeNotNull('displayTimezone', instance.displayTimezone);
  writeNotNull('allowNewChoices', instance.allowNewChoices);
  writeNotNull('defaultToday', instance.defaultToday);
  writeNotNull('units', instance.units);
  writeNotNull('sourceFieldId', instance.sourceFieldId);
  writeNotNull('doesAverage', instance.doesAverage);
  writeNotNull('formula', instance.formula);
  writeNotNull('decimalPlaces', instance.decimalPlaces);
  writeNotNull('defaultCountryCode', instance.defaultCountryCode);
  writeNotNull('displayMonth', instance.displayMonth);
  writeNotNull('seeVersions', instance.seeVersions);
  writeNotNull('numLines', instance.numLines);
  writeNotNull('defaultKind', instance.defaultKind);
  writeNotNull('displayEmail', instance.displayEmail);
  writeNotNull('coverText', instance.coverText);
  writeNotNull('currencySymbol', instance.currencySymbol);
  writeNotNull('targetFieldId', instance.targetFieldId);
  writeNotNull('displayUser', instance.displayUser);
  writeNotNull('blankIsZero', instance.blankIsZero);
  writeNotNull('exact', instance.exact);
  writeNotNull('defaultDomain', instance.defaultDomain);
  writeNotNull('defaultValue', instance.defaultValue);
  writeNotNull('abbreviate', instance.abbreviate);
  writeNotNull('numberFormat', instance.numberFormat);
  writeNotNull('targetTableName', instance.targetTableName);
  writeNotNull('appearsAs', instance.appearsAs);
  writeNotNull('width', instance.width);
  writeNotNull('currencyFormat', instance.currencyFormat);
  writeNotNull('displayImages', instance.displayImages);
  writeNotNull('displayDayOfWeek', instance.displayDayOfWeek);
  writeNotNull('commaStart', instance.commaStart);
  writeNotNull('choices', instance.choices);
  writeNotNull('targetTableId', instance.targetTableId);
  writeNotNull('displayRelative', instance.displayRelative);
  writeNotNull('displayTime', instance.displayTime);
  writeNotNull('versionMode', instance.versionMode);
  writeNotNull('snapFieldId', instance.snapFieldId);
  writeNotNull('hours24', instance.hours24);
  writeNotNull('sortAlpha', instance.sortAlpha);
  writeNotNull('sortAsGiven', instance.sortAsGiven);
  writeNotNull('hasExtension', instance.hasExtension);
  writeNotNull('useNewWindow', instance.useNewWindow);
  writeNotNull('appendOnly', instance.appendOnly);
  writeNotNull('displayAsLink', instance.displayAsLink);
  return val;
}

FieldsPermissions _$FieldsPermissionsFromJson(Map<String, dynamic> json) =>
    FieldsPermissions(
      permissionType: json['permissionType'] as String?,
      role: json['role'] as String?,
      roleId: json['roleId'] as int?,
    );

Map<String, dynamic> _$FieldsPermissionsToJson(FieldsPermissions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('role', instance.role);
  writeNotNull('permissionType', instance.permissionType);
  writeNotNull('roleId', instance.roleId);
  return val;
}

FieldResponse _$FieldResponseFromJson(Map<String, dynamic> json) =>
    FieldResponse(
      noWrap: json['noWrap'] as bool?,
      findEnabled: json['findEnabled'] as bool?,
      fieldType: json['fieldType'] as String?,
      fieldHelp: json['fieldHelp'] as bool?,
      bold: json['bold'] as bool?,
      audited: json['audited'] as bool?,
      appearsByDefault: json['appearsByDefault'] as bool?,
      label: json['label'] as String?,
      permissions: (json['permissions'] as List<dynamic>?)
          ?.map((e) => FieldsPermissions.fromJson(e as Map<String, dynamic>))
          .toList(),
      properties: json['properties'] == null
          ? null
          : FieldsProperties.fromJson(
              json['properties'] as Map<String, dynamic>),
      id: json['id'] as int?,
      doesDataCopy: json['doesDataCopy'] as bool?,
      isRequired: json['required'] as bool?,
      mode: json['mode'] as String?,
      unique: json['unique'] as bool?,
    );

Map<String, dynamic> _$FieldResponseToJson(FieldResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('fieldType', instance.fieldType);
  writeNotNull('mode', instance.mode);
  writeNotNull('label', instance.label);
  writeNotNull('noWrap', instance.noWrap);
  writeNotNull('bold', instance.bold);
  writeNotNull('required', instance.isRequired);
  writeNotNull('appearsByDefault', instance.appearsByDefault);
  writeNotNull('findEnabled', instance.findEnabled);
  writeNotNull('unique', instance.unique);
  writeNotNull('doesDataCopy', instance.doesDataCopy);
  writeNotNull('fieldHelp', instance.fieldHelp);
  writeNotNull('audited', instance.audited);
  writeNotNull('properties', instance.properties);
  writeNotNull('permissions', instance.permissions);
  return val;
}

FieldsRequest _$FieldsRequestFromJson(Map<String, dynamic> json) =>
    FieldsRequest(
      fieldIds:
          (json['fieldIds'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$FieldsRequestToJson(FieldsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldIds', instance.fieldIds);
  return val;
}

FieldsDeletedResponse _$FieldsDeletedResponseFromJson(
        Map<String, dynamic> json) =>
    FieldsDeletedResponse(
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      deletedFieldIds: (json['deletedFieldIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$FieldsDeletedResponseToJson(
    FieldsDeletedResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('deletedFieldIds', instance.deletedFieldIds);
  writeNotNull('errors', instance.errors);
  return val;
}

FieldUsageResponse _$FieldUsageResponseFromJson(Map<String, dynamic> json) =>
    FieldUsageResponse(
      field: json['field'] == null
          ? null
          : FieldsUsageField.fromJson(json['field'] as Map<String, dynamic>),
      usage: json['usage'] == null
          ? null
          : FieldsUsageUsage.fromJson(json['usage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldUsageResponseToJson(FieldUsageResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('field', instance.field);
  writeNotNull('usage', instance.usage);
  return val;
}

FieldsUsageField _$FieldsUsageFieldFromJson(Map<String, dynamic> json) =>
    FieldsUsageField(
      id: json['id'] as int?,
      name: json['name'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$FieldsUsageFieldToJson(FieldsUsageField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  return val;
}

FieldsUsageUsage _$FieldsUsageUsageFromJson(Map<String, dynamic> json) =>
    FieldsUsageUsage(
      reminders: json['reminders'] == null
          ? null
          : FieldsusageUsageReminders.fromJson(
              json['reminders'] as Map<String, dynamic>),
      actions: json['actions'] == null
          ? null
          : FieldsusageUsageActions.fromJson(
              json['actions'] as Map<String, dynamic>),
      appHomePages: json['appHomePages'] == null
          ? null
          : FieldsusageUsageAppHomePages.fromJson(
              json['appHomePages'] as Map<String, dynamic>),
      defaultReports: json['defaultReports'] == null
          ? null
          : FieldsusageUsageDefaultReports.fromJson(
              json['defaultReports'] as Map<String, dynamic>),
      exactForms: json['exactForms'] == null
          ? null
          : FieldsusageUsageExactForms.fromJson(
              json['exactForms'] as Map<String, dynamic>),
      fields: json['fields'] == null
          ? null
          : FieldsusageUsageFields.fromJson(
              json['fields'] as Map<String, dynamic>),
      forms: json['forms'] == null
          ? null
          : FieldsusageUsageForms.fromJson(
              json['forms'] as Map<String, dynamic>),
      notifications: json['notifications'] == null
          ? null
          : FieldsusageUsageNotifications.fromJson(
              json['notifications'] as Map<String, dynamic>),
      personalReports: json['personalReports'] == null
          ? null
          : FieldsusageUsagePersonalReports.fromJson(
              json['personalReports'] as Map<String, dynamic>),
      relationships: json['relationships'] == null
          ? null
          : FieldsusageUsageRelationships.fromJson(
              json['relationships'] as Map<String, dynamic>),
      reports: json['reports'] == null
          ? null
          : FieldsusageUsageReports.fromJson(
              json['reports'] as Map<String, dynamic>),
      roles: json['roles'] == null
          ? null
          : FieldsusageUsageRoles.fromJson(
              json['roles'] as Map<String, dynamic>),
      webhooks: json['webhooks'] == null
          ? null
          : FieldsusageUsageWebhooks.fromJson(
              json['webhooks'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FieldsUsageUsageToJson(FieldsUsageUsage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('defaultReports', instance.defaultReports);
  writeNotNull('notifications', instance.notifications);
  writeNotNull('reminders', instance.reminders);
  writeNotNull('forms', instance.forms);
  writeNotNull('actions', instance.actions);
  writeNotNull('personalReports', instance.personalReports);
  writeNotNull('roles', instance.roles);
  writeNotNull('reports', instance.reports);
  writeNotNull('fields', instance.fields);
  writeNotNull('relationships', instance.relationships);
  writeNotNull('webhooks', instance.webhooks);
  writeNotNull('appHomePages', instance.appHomePages);
  writeNotNull('exactForms', instance.exactForms);
  return val;
}

FieldsusageUsageDefaultReports _$FieldsusageUsageDefaultReportsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageDefaultReports(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageDefaultReportsToJson(
    FieldsusageUsageDefaultReports instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageNotifications _$FieldsusageUsageNotificationsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageNotifications(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageNotificationsToJson(
    FieldsusageUsageNotifications instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageReminders _$FieldsusageUsageRemindersFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageReminders(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageRemindersToJson(
    FieldsusageUsageReminders instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageForms _$FieldsusageUsageFormsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageForms(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageFormsToJson(
    FieldsusageUsageForms instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageActions _$FieldsusageUsageActionsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageActions(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageActionsToJson(
    FieldsusageUsageActions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsagePersonalReports _$FieldsusageUsagePersonalReportsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsagePersonalReports(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsagePersonalReportsToJson(
    FieldsusageUsagePersonalReports instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageRoles _$FieldsusageUsageRolesFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageRoles(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageRolesToJson(
    FieldsusageUsageRoles instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageReports _$FieldsusageUsageReportsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageReports(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageReportsToJson(
    FieldsusageUsageReports instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageFields _$FieldsusageUsageFieldsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageFields(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageFieldsToJson(
    FieldsusageUsageFields instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageRelationships _$FieldsusageUsageRelationshipsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageRelationships(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageRelationshipsToJson(
    FieldsusageUsageRelationships instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageWebhooks _$FieldsusageUsageWebhooksFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageWebhooks(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageWebhooksToJson(
    FieldsusageUsageWebhooks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageAppHomePages _$FieldsusageUsageAppHomePagesFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageAppHomePages(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageAppHomePagesToJson(
    FieldsusageUsageAppHomePages instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

FieldsusageUsageExactForms _$FieldsusageUsageExactFormsFromJson(
        Map<String, dynamic> json) =>
    FieldsusageUsageExactForms(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$FieldsusageUsageExactFormsToJson(
    FieldsusageUsageExactForms instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

GetFieldUsagesRequest _$GetFieldUsagesRequestFromJson(
        Map<String, dynamic> json) =>
    GetFieldUsagesRequest(
      skip: json['skip'] as int?,
      top: json['top'] as int?,
    );

Map<String, dynamic> _$GetFieldUsagesRequestToJson(
    GetFieldUsagesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skip', instance.skip);
  writeNotNull('top', instance.top);
  return val;
}

DeleteFileResponse _$DeleteFileResponseFromJson(Map<String, dynamic> json) =>
    DeleteFileResponse(
      creator: json['creator'] == null
          ? null
          : User.fromJson(json['creator'] as Map<String, dynamic>),
      fileName: json['fileName'] as String?,
      uploaded: json['uploaded'] as String?,
      versionNumber: json['versionNumber'] as int?,
    );

Map<String, dynamic> _$DeleteFileResponseToJson(DeleteFileResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('versionNumber', instance.versionNumber);
  writeNotNull('fileName', instance.fileName);
  writeNotNull('uploaded', instance.uploaded);
  writeNotNull('creator', instance.creator);
  return val;
}

FormulaRunRequest _$FormulaRunRequestFromJson(Map<String, dynamic> json) =>
    FormulaRunRequest(
      formula: json['formula'] as String,
      from: json['from'] as String,
      rid: json['rid'] as int?,
    );

Map<String, dynamic> _$FormulaRunRequestToJson(FormulaRunRequest instance) {
  final val = <String, dynamic>{
    'formula': instance.formula,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('rid', instance.rid);
  val['from'] = instance.from;
  return val;
}

RecordsDeleteRequest _$RecordsDeleteRequestFromJson(
        Map<String, dynamic> json) =>
    RecordsDeleteRequest(
      from: json['from'] as String,
      where: json['where'] as String,
    );

Map<String, dynamic> _$RecordsDeleteRequestToJson(
        RecordsDeleteRequest instance) =>
    <String, dynamic>{
      'from': instance.from,
      'where': instance.where,
    };

RecordsQueryRequest _$RecordsQueryRequestFromJson(Map<String, dynamic> json) =>
    RecordsQueryRequest(
      where: json['where'] as String?,
      from: json['from'] as String,
      groupBy: (json['groupBy'] as List<dynamic>?)
          ?.map((e) => RecordsQueryGroupBy.fromJson(e as Map<String, dynamic>))
          .toList(),
      options: json['options'] == null
          ? null
          : RecordsQueryOptions.fromJson(
              json['options'] as Map<String, dynamic>),
      select: (json['select'] as List<dynamic>?)?.map((e) => e as int).toList(),
      sortBy: (json['sortBy'] as List<dynamic>?)
          ?.map((e) => SortBy.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RecordsQueryRequestToJson(RecordsQueryRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('options', instance.options);
  writeNotNull('where', instance.where);
  writeNotNull('groupBy', instance.groupBy);
  writeNotNull('sortBy', instance.sortBy);
  writeNotNull('select', instance.select);
  val['from'] = instance.from;
  return val;
}

RecordsQueryOptions _$RecordsQueryOptionsFromJson(Map<String, dynamic> json) =>
    RecordsQueryOptions(
      top: json['top'] as int?,
      skip: json['skip'] as int?,
      compareWithAppLocalTime: json['compareWithAppLocalTime'] as bool?,
    );

Map<String, dynamic> _$RecordsQueryOptionsToJson(RecordsQueryOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skip', instance.skip);
  writeNotNull('compareWithAppLocalTime', instance.compareWithAppLocalTime);
  writeNotNull('top', instance.top);
  return val;
}

RecordsQueryGroupBy _$RecordsQueryGroupByFromJson(Map<String, dynamic> json) =>
    RecordsQueryGroupBy(
      fieldId: json['fieldId'] as int?,
      grouping: json['grouping'] as String?,
    );

Map<String, dynamic> _$RecordsQueryGroupByToJson(RecordsQueryGroupBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldId', instance.fieldId);
  writeNotNull('grouping', instance.grouping);
  return val;
}

SortBy _$SortByFromJson(Map<String, dynamic> json) => SortBy(
      fieldId: json['fieldId'] as int?,
      order: json['order'] as String?,
    );

Map<String, dynamic> _$SortByToJson(SortBy instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fieldId', instance.fieldId);
  writeNotNull('order', instance.order);
  return val;
}

RecordsQueryResponse _$RecordsQueryResponseFromJson(
        Map<String, dynamic> json) =>
    RecordsQueryResponse(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] == null
          ? null
          : RecordMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
    );

Map<String, dynamic> _$RecordsQueryResponseToJson(
    RecordsQueryResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('fields', instance.fields);
  writeNotNull('data', instance.data);
  writeNotNull('metadata', instance.metadata);
  return val;
}

RecordMetadata _$RecordMetadataFromJson(Map<String, dynamic> json) =>
    RecordMetadata(
      skip: json['skip'] as int?,
      top: json['top'] as int?,
      numFields: json['numFields'] as int?,
      numRecords: json['numRecords'] as int?,
      totalRecords: json['totalRecords'] as int?,
    );

Map<String, dynamic> _$RecordMetadataToJson(RecordMetadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skip', instance.skip);
  writeNotNull('numFields', instance.numFields);
  writeNotNull('top', instance.top);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('numRecords', instance.numRecords);
  return val;
}

Field _$FieldFromJson(Map<String, dynamic> json) => Field(
      type: json['type'] as String?,
      id: json['id'] as int?,
      label: json['label'] as String?,
    );

Map<String, dynamic> _$FieldToJson(Field instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('type', instance.type);
  return val;
}

RecordsUpsertRequest _$RecordsUpsertRequestFromJson(
        Map<String, dynamic> json) =>
    RecordsUpsertRequest(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      fieldsToReturn: (json['fieldsToReturn'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      mergeFieldId: json['mergeFieldId'] as int?,
      to: json['to'] as String,
    );

Map<String, dynamic> _$RecordsUpsertRequestToJson(
    RecordsUpsertRequest instance) {
  final val = <String, dynamic>{
    'to': instance.to,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('mergeFieldId', instance.mergeFieldId);
  writeNotNull('fieldsToReturn', instance.fieldsToReturn);
  return val;
}

RecordsUpsertResponse _$RecordsUpsertResponseFromJson(
        Map<String, dynamic> json) =>
    RecordsUpsertResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      metadata: json['metadata'] == null
          ? null
          : RecordUpsertMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecordsUpsertResponseToJson(
    RecordsUpsertResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('data', instance.data);
  return val;
}

RecordUpsertMetadata _$RecordUpsertMetadataFromJson(
        Map<String, dynamic> json) =>
    RecordUpsertMetadata(
      createdRecordIds: (json['createdRecordIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      lineErrors: json['lineErrors'] as Map<String, dynamic>?,
      totalNumberOfRecordsProcessed:
          (json['totalNumberOfRecordsProcessed'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      unchangedRecordIds: (json['unchangedRecordIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      updatedRecordIds: (json['updatedRecordIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
    );

Map<String, dynamic> _$RecordUpsertMetadataToJson(
    RecordUpsertMetadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('createdRecordIds', instance.createdRecordIds);
  writeNotNull('lineErrors', instance.lineErrors);
  writeNotNull('unchangedRecordIds', instance.unchangedRecordIds);
  writeNotNull('updatedRecordIds', instance.updatedRecordIds);
  writeNotNull(
      'totalNumberOfRecordsProcessed', instance.totalNumberOfRecordsProcessed);
  return val;
}

LineErrors _$LineErrorsFromJson(Map<String, dynamic> json) => LineErrors();

Map<String, dynamic> _$LineErrorsToJson(LineErrors instance) =>
    <String, dynamic>{};

ReportResponse _$ReportResponseFromJson(Map<String, dynamic> json) =>
    ReportResponse(
      id: json['id'] as String?,
      type: json['type'] as String?,
      name: json['name'] as String?,
      properties: json['properties'] as Map<String, dynamic>?,
      description: json['description'] as String?,
      query: json['query'] == null
          ? null
          : ReportQuery.fromJson(json['query'] as Map<String, dynamic>),
      ownerId: json['ownerId'] as String?,
      usedCount: json['usedCount'] as int?,
      usedLast: json['usedLast'] as String?,
    );

Map<String, dynamic> _$ReportResponseToJson(ReportResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('description', instance.description);
  writeNotNull('ownerId', instance.ownerId);
  writeNotNull('query', instance.query);
  writeNotNull('properties', instance.properties);
  writeNotNull('usedLast', instance.usedLast);
  writeNotNull('usedCount', instance.usedCount);
  return val;
}

ReportQuery _$ReportQueryFromJson(Map<String, dynamic> json) => ReportQuery(
      tableId: json['tableId'] as String?,
      filter: json['filter'] as String?,
      formulaFields: (json['formulaFields'] as List<dynamic>?)
          ?.map(
              (e) => CalculatedFormulaField.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReportQueryToJson(ReportQuery instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tableId', instance.tableId);
  writeNotNull('filter', instance.filter);
  writeNotNull('formulaFields', instance.formulaFields);
  return val;
}

CalculatedFormulaField _$CalculatedFormulaFieldFromJson(
        Map<String, dynamic> json) =>
    CalculatedFormulaField(
      id: json['id'] as int?,
      label: json['label'] as String?,
      formula: json['formula'] as String?,
      fieldType: $enumDecodeNullable(_$FormulaTypeEnumMap, json['fieldType']),
      decimalPrecision: json['decimalPrecision'] as int?,
    );

Map<String, dynamic> _$CalculatedFormulaFieldToJson(
    CalculatedFormulaField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('fieldType', _$FormulaTypeEnumMap[instance.fieldType]);
  writeNotNull('formula', instance.formula);
  writeNotNull('decimalPrecision', instance.decimalPrecision);
  return val;
}

const _$FormulaTypeEnumMap = {
  FormulaType.rich_text: 'rich-text',
  FormulaType.text: 'text',
  FormulaType.numeric: 'numeric',
  FormulaType.currency: 'currency',
  FormulaType.percent: 'percent',
};

RunReportRequest _$RunReportRequestFromJson(Map<String, dynamic> json) =>
    RunReportRequest(
      tableId: json['tableId'] as String,
      top: json['top'] as int?,
      skip: json['skip'] as int?,
    );

Map<String, dynamic> _$RunReportRequestToJson(RunReportRequest instance) {
  final val = <String, dynamic>{
    'tableId': instance.tableId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skip', instance.skip);
  writeNotNull('top', instance.top);
  return val;
}

RunReportResponse _$RunReportResponseFromJson(Map<String, dynamic> json) =>
    RunReportResponse(
      metadata: json['metadata'] == null
          ? null
          : ReportMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => ReportField.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RunReportResponseToJson(RunReportResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data', instance.data);
  writeNotNull('fields', instance.fields);
  writeNotNull('metadata', instance.metadata);
  return val;
}

ReportMetadata _$ReportMetadataFromJson(Map<String, dynamic> json) =>
    ReportMetadata(
      skip: json['skip'] as int?,
      top: json['top'] as int?,
      totalRecords: json['totalRecords'] as int?,
      numRecords: json['numRecords'] as int?,
      numFields: json['numFields'] as int?,
    );

Map<String, dynamic> _$ReportMetadataToJson(ReportMetadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skip', instance.skip);
  writeNotNull('numFields', instance.numFields);
  writeNotNull('top', instance.top);
  writeNotNull('totalRecords', instance.totalRecords);
  writeNotNull('numRecords', instance.numRecords);
  return val;
}

ReportField _$ReportFieldFromJson(Map<String, dynamic> json) => ReportField(
      label: json['label'] as String?,
      id: json['id'] as int?,
      type: json['type'] as String?,
      labelOverride: json['labelOverride'] as String?,
    );

Map<String, dynamic> _$ReportFieldToJson(ReportField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('type', instance.type);
  writeNotNull('labelOverride', instance.labelOverride);
  return val;
}

TableIdRelationshipRequest _$TableIdRelationshipRequestFromJson(
        Map<String, dynamic> json) =>
    TableIdRelationshipRequest(
      foreignKeyField: json['foreignKeyField'] == null
          ? null
          : TablestableIdrelationshipForeignKeyField.fromJson(
              json['foreignKeyField'] as Map<String, dynamic>),
      lookupFieldIds: (json['lookupFieldIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      parentTableId: json['parentTableId'] as String,
      summaryFields: (json['summaryFields'] as List<dynamic>?)
          ?.map((e) => TablestableIdrelationshipSummaryFields.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableIdRelationshipRequestToJson(
    TableIdRelationshipRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('summaryFields', instance.summaryFields);
  writeNotNull('lookupFieldIds', instance.lookupFieldIds);
  val['parentTableId'] = instance.parentTableId;
  writeNotNull('foreignKeyField', instance.foreignKeyField);
  return val;
}

TablestableIdrelationshipSummaryFields
    _$TablestableIdrelationshipSummaryFieldsFromJson(
            Map<String, dynamic> json) =>
        TablestableIdrelationshipSummaryFields(
          label: json['label'] as String?,
          where: json['where'] as String?,
          accumulationType:
              $enumDecode(_$AccumulationTypeEnumMap, json['accumulationType']),
          summaryFid: (json['summaryFid'] as num?)?.toDouble(),
        );

Map<String, dynamic> _$TablestableIdrelationshipSummaryFieldsToJson(
    TablestableIdrelationshipSummaryFields instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('summaryFid', instance.summaryFid);
  writeNotNull('label', instance.label);
  val['accumulationType'] =
      _$AccumulationTypeEnumMap[instance.accumulationType];
  writeNotNull('where', instance.where);
  return val;
}

const _$AccumulationTypeEnumMap = {
  AccumulationType.AVG: 'AVG',
  AccumulationType.SUM: 'SUM',
  AccumulationType.MAX: 'MAX',
  AccumulationType.MIN: 'MIN',
  AccumulationType.STD_DEV: 'STD-DEV',
  AccumulationType.COUNT: 'COUNT',
  AccumulationType.COMBINED_TEXT: 'COMBINED-TEXT',
  AccumulationType.DISTINCT_COUNT: 'DISTINCT-COUNT',
};

TablestableIdrelationshipForeignKeyField
    _$TablestableIdrelationshipForeignKeyFieldFromJson(
            Map<String, dynamic> json) =>
        TablestableIdrelationshipForeignKeyField(
          label: json['label'] as String?,
        );

Map<String, dynamic> _$TablestableIdrelationshipForeignKeyFieldToJson(
    TablestableIdrelationshipForeignKeyField instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  return val;
}

TableRelationshipResponse _$TableRelationshipResponseFromJson(
        Map<String, dynamic> json) =>
    TableRelationshipResponse(
      summaryFields: (json['summaryFields'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentTableId: json['parentTableId'] as String?,
      foreignKeyField: json['foreignKeyField'] == null
          ? null
          : Field.fromJson(json['foreignKeyField'] as Map<String, dynamic>),
      id: json['id'] as int?,
      childTableId: json['childTableId'] as String?,
      isCrossApp: json['isCrossApp'] as bool?,
      lookupFields: (json['lookupFields'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TableRelationshipResponseToJson(
    TableRelationshipResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('parentTableId', instance.parentTableId);
  writeNotNull('childTableId', instance.childTableId);
  writeNotNull('foreignKeyField', instance.foreignKeyField);
  writeNotNull('isCrossApp', instance.isCrossApp);
  writeNotNull('lookupFields', instance.lookupFields);
  writeNotNull('summaryFields', instance.summaryFields);
  return val;
}

TablesUpsertRequest _$TablesUpsertRequestFromJson(Map<String, dynamic> json) =>
    TablesUpsertRequest(
      description: json['description'] as String?,
      name: json['name'] as String,
      pluralRecordName: json['pluralRecordName'] as String?,
      singleRecordName: json['singleRecordName'] as String?,
    );

Map<String, dynamic> _$TablesUpsertRequestToJson(TablesUpsertRequest instance) {
  final val = <String, dynamic>{
    'name': instance.name,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('pluralRecordName', instance.pluralRecordName);
  writeNotNull('singleRecordName', instance.singleRecordName);
  writeNotNull('description', instance.description);
  return val;
}

TableResponse _$TableResponseFromJson(Map<String, dynamic> json) =>
    TableResponse(
      singleRecordName: json['singleRecordName'] as String?,
      pluralRecordName: json['pluralRecordName'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      id: json['id'] as String?,
      updated: json['updated'] as String?,
      created: json['created'] as String?,
      alias: json['alias'] as String?,
      defaultSortFieldId: json['defaultSortFieldId'] as int?,
      defaultSortOrder:
          $enumDecodeNullable(_$SortOrderEnumMap, json['defaultSortOrder']),
      keyFieldId: json['keyFieldId'] as int?,
      nextFieldId: json['nextFieldId'] as int?,
      nextRecordId: json['nextRecordId'] as int?,
      sizeLimit: json['sizeLimit'] as String?,
      spaceRemaining: json['spaceRemaining'] as String?,
      spaceUsed: json['spaceUsed'] as String?,
    );

Map<String, dynamic> _$TableResponseToJson(TableResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('alias', instance.alias);
  writeNotNull('description', instance.description);
  writeNotNull('created', instance.created);
  writeNotNull('updated', instance.updated);
  writeNotNull('nextRecordId', instance.nextRecordId);
  writeNotNull('nextFieldId', instance.nextFieldId);
  writeNotNull('defaultSortFieldId', instance.defaultSortFieldId);
  writeNotNull(
      'defaultSortOrder', _$SortOrderEnumMap[instance.defaultSortOrder]);
  writeNotNull('keyFieldId', instance.keyFieldId);
  writeNotNull('singleRecordName', instance.singleRecordName);
  writeNotNull('pluralRecordName', instance.pluralRecordName);
  writeNotNull('sizeLimit', instance.sizeLimit);
  writeNotNull('spaceUsed', instance.spaceUsed);
  writeNotNull('spaceRemaining', instance.spaceRemaining);
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.ASC: 'ASC',
  SortOrder.DESC: 'DESC',
};

RelationShipListResponse _$RelationShipListResponseFromJson(
        Map<String, dynamic> json) =>
    RelationShipListResponse(
      metadata: json['metadata'] == null
          ? null
          : RelationshipMetadata.fromJson(
              json['metadata'] as Map<String, dynamic>),
      relationships: (json['relationships'] as List<dynamic>?)
          ?.map((e) =>
              TableRelationshipResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RelationShipListResponseToJson(
    RelationShipListResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('relationships', instance.relationships);
  writeNotNull('metadata', instance.metadata);
  return val;
}

RelationshipMetadata _$RelationshipMetadataFromJson(
        Map<String, dynamic> json) =>
    RelationshipMetadata(
      skip: json['skip'] as int?,
      numRelationships: json['numRelationships'] as int?,
      totalRelationships: json['totalRelationships'] as int?,
    );

Map<String, dynamic> _$RelationshipMetadataToJson(
    RelationshipMetadata instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skip', instance.skip);
  writeNotNull('totalRelationships', instance.totalRelationships);
  writeNotNull('numRelationships', instance.numRelationships);
  return val;
}

UserTokenCloneRequest _$UserTokenCloneRequestFromJson(
        Map<String, dynamic> json) =>
    UserTokenCloneRequest(
      description: json['description'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$UserTokenCloneRequestToJson(
    UserTokenCloneRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  return val;
}

UserTokenResponse _$UserTokenResponseFromJson(Map<String, dynamic> json) =>
    UserTokenResponse(
      name: json['name'] as String?,
      description: json['description'] as String?,
      id: json['id'] as int?,
      token: json['token'] as String?,
      active: json['active'] as bool?,
      apps: (json['apps'] as List<dynamic>?)
          ?.map((e) => QuickbaseApp.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastUsed: json['lastUsed'] as String?,
    );

Map<String, dynamic> _$UserTokenResponseToJson(UserTokenResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('active', instance.active);
  writeNotNull('apps', instance.apps);
  writeNotNull('lastUsed', instance.lastUsed);
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('token', instance.token);
  return val;
}

QuickbaseApp _$QuickbaseAppFromJson(Map<String, dynamic> json) => QuickbaseApp(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$QuickbaseAppToJson(QuickbaseApp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  return val;
}

DenyUsersResponse _$DenyUsersResponseFromJson(Map<String, dynamic> json) =>
    DenyUsersResponse(
      success:
          (json['success'] as List<dynamic>?)?.map((e) => e as String).toList(),
      failure:
          (json['failure'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$DenyUsersResponseToJson(DenyUsersResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('failure', instance.failure);
  writeNotNull('success', instance.success);
  return val;
}
