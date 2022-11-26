import 'package:logging/logging.dart';

abstract class BaseService {
  final Logger logger;

  static bool _isTesting = false;
  static void setForTesting() => _isTesting = true;
  // https://stackoverflow.com/a/63914820/12555423
  String getCorrectPath(String fileName) => _isTesting
      ? 'lib/src/demo_data/$fileName'
      : 'packages/data/lib/src/demo_data/$fileName';

  const BaseService({
    required this.logger,
  });
}
