import 'package:data/data.dart';
import 'package:domain/src/prov/logger_prov.dart';
import 'package:riverpod/riverpod.dart';

import 'lang_prov.dart';

final deviceServiceProv = Provider(
  (ref) => DeviceService(
    languageCode: ref.watch(currentLangProv),
    logger: ref.watch(dataLoggerProv),
  ),
);

final deviceStateServiceProv = Provider(
  (ref) => DeviceStateService(
    logger: ref.watch(dataLoggerProv),
  ),
);
