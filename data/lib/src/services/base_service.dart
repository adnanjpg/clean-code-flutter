import 'package:logging/logging.dart';

abstract class BaseService {
  final Logger logger;

  const BaseService({
    required this.logger,
  });
}
