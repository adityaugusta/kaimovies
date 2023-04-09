import 'package:chopper/chopper.dart';
import 'package:kaimovies/repositories/network/converter/json_converter.dart';
import 'package:kaimovies/repositories/network/utilities/header_interceptor.dart';

class ServiceManager {
  ServiceManager._(
    String baseUrl,
    JsonModelConverter converter,
    List<ChopperService> service,
  ) {
    client = ChopperClient(
      baseUrl: Uri.parse(baseUrl),
      interceptors: [HeaderInterceptor()],
      converter: converter,
      errorConverter: converter,
      services: service,
    );
  }

  static ServiceManager create(String baseUrl, JsonModelConverter converter,
          List<ChopperService> service) =>
      ServiceManager._(baseUrl, converter, service);

  late ChopperClient client;
}
