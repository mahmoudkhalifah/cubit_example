import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'condition_state.dart';

class ConditionCubit extends Cubit<ConditionState> {
  ConditionCubit() : super(ConditionInitial());

  void makeError() {
    emit(ConditionError(errorsCount: 2, errorMsg: "Internet Error"));
  }

  void makeInfo(String msg) {
    emit(ConditionInfo(infoMsg: msg));
  }

  void makeWarning() {
    emit(ConditionWarning(warningMsg: "You are too far from the place", warningsCount: 2));
  }
}
