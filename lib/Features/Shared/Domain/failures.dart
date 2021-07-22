import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.characterLimitExceeded({required T failedValue}) = CharacterLimitExceeded<T>;
  const factory ValueFailure.shortCharacters({required T failedValue}) = ShortCharacters<T>;
  const factory ValueFailure.emptyValue({required T failedValue}) = EmptyValue<T>;
  const factory ValueFailure.invalidFormat({required T failedValue}) = InvalidFormat<T>;
}
