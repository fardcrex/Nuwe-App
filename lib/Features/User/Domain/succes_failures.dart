import 'package:freezed_annotation/freezed_annotation.dart';
part 'succes_failures.freezed.dart';

@freezed
abstract class UserFailure with _$UserFailure {
  const factory UserFailure.error(Object error) = ErrorServer;
  const factory UserFailure.emailNotVerified() = EmailNotVerified;
  const factory UserFailure.emailNotSend() = EmailNotSended;
}

@freezed
abstract class UserSuccess with _$UserSuccess {
  const factory UserSuccess.empty() = EmptySuccess;
  const factory UserSuccess.emailSended() = EmailSended;
}
