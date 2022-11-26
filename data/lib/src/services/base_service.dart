import 'package:data/src/data_providers/local_data_provider.dart';
import 'package:data/src/data_providers/remote_data_provider.dart';
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

abstract class BaseRemoteService extends BaseService {
  final RemoteDataProvider remoteDataProvider;
  const BaseRemoteService({
    required this.remoteDataProvider,
    required super.logger,
  });
}

abstract class BaseLocalService extends BaseService {
  final LocalDataProvider localDataProvider;
  const BaseLocalService({
    required this.localDataProvider,
    required super.logger,
  });
}
