import 'package:hydrated_bloc/hydrated_bloc.dart';

class InitCubit extends HydratedCubit<bool> {
  InitCubit() : super(false);

  void startApp() {
    emit(true);
  }

  @override
  bool fromJson(Map<String, dynamic> json) => json['value'] as bool;

  @override
  Map<String, bool> toJson(bool state) => {'state': state};
}