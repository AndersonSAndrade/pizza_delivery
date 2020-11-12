import '../../pizza_delivery_api.dart';

class DatabaseConnectionConfiguration extends Configuration {
  DatabaseConnectionConfiguration(String fileName)
      : super.fromFile(File(fileName));

  DatabaseConnectionConfiguration database;
  String apiBaseURL;

  @optionalConfiguration
  int identifier;
}
