import 'package:bloc/bloc.dart';
import 'package:riverpod/riverpod.dart' show Ref;
export 'package:riverpod/riverpod.dart' show Ref;

class RefCubit<T> extends Cubit<T> {
  RefCubit(this._ref, T state) : super(state);

  final Ref _ref;

  Ref get ref => _ref;
}
