import 'package:flutter/widgets.dart';
import 'package:logging/logging.dart';

import 'app.dart';

void main() {
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    debugPrint('${record.level.name}: ${record.time}: ${record.message}');
  });

  runApp(const TheApp());
}
