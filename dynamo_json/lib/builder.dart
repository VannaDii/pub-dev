/// The builder library for `json_dynamo`. This is meant for the `build_runner`
/// and shouldn't be used directly.
library dynamo_json.builder;

import 'package:build/build.dart';
import 'package:dynamo_json/src/part_builder.dart';

/// Gets the [Builder] to use for code generation.
Builder dynamoJsonBuilder(BuilderOptions options) => dynamoJsonPartBuilder();
