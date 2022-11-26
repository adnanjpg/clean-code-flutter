import 'package:data/data.dart';
import 'package:domain/src/prov/logger_prov.dart';
import 'package:riverpod/riverpod.dart';

import 'lang_prov.dart';

final deviceWithStateServiceProv = Provider(
  (ref) => DeviceWithStateService(
    languageCode: ref.watch(currentLangProv),
    logger: ref.watch(dataLoggerProv),
  ),
);
