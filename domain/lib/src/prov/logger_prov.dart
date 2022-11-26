import 'package:logging/logging.dart';
import 'package:riverpod/riverpod.dart';

final dataLoggerProv = Provider((ref) => Logger('data'));
final domainLoggerProv = Provider((ref) => Logger('domain'));
final featureLoggerProv = Provider((ref) => Logger('feature'));
