import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nuwe/Feature/Shared/Domain/failures.dart';
import 'package:nuwe/Feature/Shared/Domain/value_object_base.dart';
import 'package:nuwe/Feature/User/Domain/value_objects.dart';

class NicknameOrEmail extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NicknameOrEmail(String input) {
    return NicknameOrEmail._(
      validateNicknameOrEmail(input.trim()),
    );
  }

  const NicknameOrEmail._(this.value);

  static Either<ValueFailure<String>, String> validateNicknameOrEmail(String input) {
    final isEmail = EmailAddress.validateEmailAddress(input);

    if (isEmail.isRight()) return right(input);

    final isNickname = Nickname.validateNickname(input);

    if (isNickname.isRight()) return right(input);

    if (input.isEmpty) return left(ValueFailure.shortCharacters(failedValue: input));

    return left(ValueFailure.invalidFormat(failedValue: input));
  }

  bool get isNickname => value.fold((l) => false, (input) => Nickname.validateNickname(input).isRight());
}

@immutable
class EmailAddress extends ValueObject<String> {
  static const maxLength = 120;
  static const emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(validateEmailAddress(input.trim()));
  }

  const EmailAddress._(this.value);

  static Either<ValueFailure<String>, String> validateEmailAddress(String input) {
    if (input.isEmpty) return left(ValueFailure.shortCharacters(failedValue: input));

    if (input.length > maxLength) return left(ValueFailure.characterLimitExceeded(failedValue: input));

    if (!RegExp(emailRegex).hasMatch(input)) return left(ValueFailure.invalidFormat(failedValue: input));

    return right(input);
  }
}

@immutable
class Password extends ValueObject<String> {
  static const int maxLength = 60;
  static const int minLength = 6;
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input.trim()));
  }

  const Password._(this.value);
  static Either<ValueFailure<String>, String> validatePassword(String input) {
    // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
    if (input.length < minLength) return left(ValueFailure.shortCharacters(failedValue: input));

    if (input.length > maxLength) return left(ValueFailure.characterLimitExceeded(failedValue: input));

    return right(input);
  }
}
