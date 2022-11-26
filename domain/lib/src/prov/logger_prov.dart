import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

export 'package:logging/logging.dart' show Level;

final dataLoggerProv = Provider((ref) => Logger('data layer'));
final domainLoggerProv = Provider((ref) => Logger('domain layer'));
final presentationLoggerProv = Provider((ref) => Logger('presentation layer'));
