import 'package:data/data.dart';
import 'package:domain/src/prov/logger_prov.dart';
import 'package:riverpod/riverpod.dart';

import 'lang_prov.dart';

final remoteDataProviderProv = Provider(
  (ref) => RemoteDataProvider(
    ref.watch(dataLoggerProv),
  ),
);

final localDataProviderProv = Provider(
  (ref) => LocalDataProvider(
    ref.watch(dataLoggerProv),
  ),
);

final deviceWithStateServiceProv = Provider(
  (ref) => DeviceWithStateService(
    languageCode: ref.watch(currentLangProv),
    logger: ref.watch(dataLoggerProv),
    remoteDataProvider: ref.watch(remoteDataProviderProv),
  ),
);

final deviceActionsProv = Provider(
  (ref) => DeviceActionService(
    languageCode: ref.watch(currentLangProv),
    logger: ref.watch(dataLoggerProv),
    remoteDataProvider: ref.watch(remoteDataProviderProv),
  ),
);

final routinesProv = Provider(
  (ref) => RoutineService(
    logger: ref.watch(dataLoggerProv),
    localDataProvider: ref.watch(localDataProviderProv),
  ),
);
