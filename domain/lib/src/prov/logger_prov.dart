import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

final dataLoggerProv = Provider((ref) => Logger('data layer'));
final domainLoggerProv = Provider((ref) => Logger('domain layer'));
final presentationLoggerProv = Provider((ref) => Logger('presentation layer'));
