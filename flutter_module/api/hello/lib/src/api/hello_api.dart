import 'package:hello/src/service/service.dart';

class HelloApi {
  String sayHello({String? name}) => HelloWorldService().getHelloWorld(name: name);
}
