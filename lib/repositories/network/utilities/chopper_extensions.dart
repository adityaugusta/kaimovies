import 'package:chopper/chopper.dart';

extension ResponseExtension<BodyType> on Response<BodyType> {
  BodyType get bodyNotNull {
    final body = this.body;
    if (body != null) {
      return body;
    }
    throw Exception('Empty response');
  }
}
