// Openapi Generator last run: : 2023-08-22T09:42:52.824614
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  additionalProperties:
  AdditionalProperties(pubName: 'petstore_api', pubAuthor: 'Bacon Chiu'),
  inputSpecFile: 'openapi.yaml',
  generatorName: Generator.dart,
  outputDirectory: 'api/petstore',
  useNextGen: true,
)
class PetStoreApi extends OpenapiGeneratorConfig {}