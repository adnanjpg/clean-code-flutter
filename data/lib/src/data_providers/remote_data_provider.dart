import 'package:data/src/data_providers/base_data_provider.dart';
import 'package:flutter/services.dart';

class RemoteDataProvider extends BaseDataProvider {
  const RemoteDataProvider(super.logger);

  Future<String> getDataFrom(String path) async =>
      await rootBundle.loadString(path);
}
