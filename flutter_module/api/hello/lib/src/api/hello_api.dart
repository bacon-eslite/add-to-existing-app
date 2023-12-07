import '../service/service.dart';

class HelloApi {
  String sayHello({String? name}) =>
      HelloWorldService().getHelloWorld(name: name);
}
