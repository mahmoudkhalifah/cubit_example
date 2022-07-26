part of 'condition_cubit.dart';

@immutable
abstract class ConditionState {}

class ConditionInitial extends ConditionState {}

class ConditionError extends ConditionState {
  final String errorMsg;
  final int errorsCount;

  ConditionError({required this.errorsCount,required this.errorMsg});

}

class ConditionInfo extends ConditionState {
  final String infoMsg;

  ConditionInfo({required this.infoMsg});

}

class ConditionWarning extends ConditionState {
  final String warningMsg;
  final int warningsCount;

  ConditionWarning({required this.warningMsg,required this.warningsCount});
}
