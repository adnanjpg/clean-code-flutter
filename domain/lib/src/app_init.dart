import 'package:domain/src/prov/services_prov.dart';
import 'package:domain/src/ref_cubit.dart';

class DomainAppInit {
  static Future<void> init(Ref ref) async {
    await ref.read(localDataProviderProv).create();
  }
}
