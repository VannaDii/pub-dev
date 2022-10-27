import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'dynamo_json_annotation.dart';
import 'helpers/all.dart';

class DynamoJsonGenerator extends GeneratorForAnnotation<DynamoJson> {
  const DynamoJsonGenerator();

  @override
  Iterable<String> generateForAnnotatedElement(
      Element element, ConstantReader annotation, BuildStep buildStep) {
    if (!element.library!.isNonNullableByDefault) {
      throw InvalidGenerationSourceError(
        'DynamoDB Generator cannot target libraries that have not been '
        'migrated to null-safety.',
        element: element,
      );
    }

    if (element is! ClassElement || element is EnumElement) {
      log.warning(
        'DynamoDB JSON will not be generated for ${element.displayName} '
        'because it is not a class.',
      );
      return <String>[];
    }

    final result = GeneratorHelper.forElement(element: element).generate();
    return result;
  }
}
