import 'package:bloc/bloc.dart';

class SplashCubit extends Cubit<LoadStatus> {
  SplashCubit() : super(LoadStatus.data_load);

  changeLoadStatus(LoadStatus status) {
    emit(status);
  }
}

enum LoadStatus {
  data_load('데이터 로드'),
  auth_check('로그인 체크');

  const LoadStatus(this.message);
  final String message;
}