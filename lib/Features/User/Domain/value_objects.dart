import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/Shared/Domain/failures.dart';
import 'package:nuwe/Features/Shared/Domain/value_object_base.dart';

class NamePerson extends ValueObject<String> {
  static const int maxLength = 120;

  @override
  final Either<ValueFailure<String>, String> value;

  factory NamePerson(String input) {
    return NamePerson._(
      validateNamePerson(input.trim()),
    );
  }

  const NamePerson._(this.value);

  static Either<ValueFailure<String>, String> validateNamePerson(String input) {
    if (input.isEmpty) return Left(ValueFailure.shortCharacters(failedValue: input));

    if (input.length > maxLength) return Left(ValueFailure.characterLimitExceeded(failedValue: input));

    return Right(input);
  }
}

class Nickname extends ValueObject<String> {
  static const int maxLength = 20;
  static const int minLengthNick = 6;
  static const String _nicknameRegex = r'^(?![_])[a-zA-Z0-9_]+(?<![_])$';
  static const String _notNumericRegex = r'^([0-9])*$';

  @override
  final Either<ValueFailure<String>, String> value;

  factory Nickname(String input) {
    return Nickname._(
      validateNickname(input.trim()),
    );
  }

  const Nickname._(this.value);

  static Either<ValueFailure<String>, String> validateNickname(String input) {
    if (input.length < minLengthNick) return left(ValueFailure.shortCharacters(failedValue: input));

    if (input.length > maxLength) return left(ValueFailure.characterLimitExceeded(failedValue: input));

    if (RegExp(_notNumericRegex).hasMatch(input)) return left(ValueFailure.invalidFormat(failedValue: input));

    if (!RegExp(_nicknameRegex).hasMatch(input)) return left(ValueFailure.invalidFormat(failedValue: input));

    return right(input);
  }
}
