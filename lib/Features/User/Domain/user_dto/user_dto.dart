import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class User with _$User {
  static const SOCIAL_LINKS = 'socialLinks';
  factory User({
    required String emailAddress,
    required String nickname,
    String? avatarImage,
    required String name,
    required String country,
    required String city,
    String? bio,
    required int age,
    String? lookingWork,
    required String desiredJob,
    String? location,
    int? salaryRange,
    @Default(false) bool receiveNotificationFromCompanies,
    @Default(false) bool disponibilityToTravel,
    @Default(false) bool workRemote,
    @Default(false) bool immediateIncorporation,
    @Default([]) List<String> stacks,
    @JsonKey(name: User.SOCIAL_LINKS) required List<SocialLink> socialLinks,
    // required Social social,
  }) = UserData;
  factory User.emailNotVerified() = EmailNotVerified;
  factory User.isNotCreateInformation({
    required String emailAddress,
    required String nickname,
    String? avatarImage,
    required String name,
  }) = IsNotCreateInformation;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
abstract class SocialLink with _$SocialLink {
  const factory SocialLink.github({required String link}) = Github;
  const factory SocialLink.linkedin({required String link}) = Linkedin;
  const factory SocialLink.twitter({required String link}) = Twitter;
  const factory SocialLink.instagram({required String link}) = Instagram;
  const factory SocialLink.portafolio({required String link}) = Portafolio;
  factory SocialLink.fromJson(Map<String, dynamic> json) => _$SocialLinkFromJson(json);
}
