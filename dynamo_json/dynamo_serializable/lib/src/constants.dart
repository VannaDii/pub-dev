// Copyright (c) 2018, the Dart project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Name used for closure argument when generating calls to `map`.
const closureArg = 'e';

const generatedLocalVarName = 'val';
const toDynamoJsonMapHelperName = 'writeNotNull';

const converterOrKeyInstructions = r'''
* Use `DynamoConverter`
  https://pub.dev/documentation/dynamo_annotation/latest/dynamo_annotation/DynamoConverter-class.html
* Use `DynamoKey` fields `fromDynamoJson` and `toDynamoJson`
  https://pub.dev/documentation/dynamo_annotation/latest/dynamo_annotation/DynamoKey/fromDynamoJson.html
  https://pub.dev/documentation/dynamo_annotation/latest/dynamo_annotation/DynamoKey/toDynamoJson.html''';
