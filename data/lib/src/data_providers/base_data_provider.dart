import 'package:logging/logging.dart';

abstract class BaseDataProvider {
  final Logger logger;
  const BaseDataProvider(this.logger);
}
