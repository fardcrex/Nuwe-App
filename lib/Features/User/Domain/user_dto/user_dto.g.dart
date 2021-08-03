// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserData _$_$UserDataFromJson(Map<String, dynamic> json) {
  return _$UserData(
    emailAddress: json['emailAddress'] as String,
    nickname: json['nickname'] as String,
    avatarImage: json['avatarImage'] as String?,
    name: json['name'] as String,
    country: json['country'] as String,
    city: json['city'] as String,
    bio: json['bio'] as String?,
    age: json['age'] as int,
    lookingWork: json['lookingWork'] as String?,
    desiredJob: json['desiredJob'] as String,
    location: json['location'] as String?,
    salaryRange: json['salaryRange'] as int?,
    receiveNotificationFromCompanies:
        json['receiveNotificationFromCompanies'] as bool? ?? false,
    disponibilityToTravel: json['disponibilityToTravel'] as bool? ?? false,
    workRemote: json['workRemote'] as bool? ?? false,
    immediateIncorporation: json['immediateIncorporation'] as bool? ?? false,
    stacks:
        (json['stacks'] as List<dynamic>?)?.map((e) => e as String).toList() ??
            [],
    socialLinks: (json['socialLinks'] as List<dynamic>)
        .map((e) => SocialLink.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$UserDataToJson(_$UserData instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'nickname': instance.nickname,
      'avatarImage': instance.avatarImage,
      'name': instance.name,
      'country': instance.country,
      'city': instance.city,
      'bio': instance.bio,
      'age': instance.age,
      'lookingWork': instance.lookingWork,
      'desiredJob': instance.desiredJob,
      'location': instance.location,
      'salaryRange': instance.salaryRange,
      'receiveNotificationFromCompanies':
          instance.receiveNotificationFromCompanies,
      'disponibilityToTravel': instance.disponibilityToTravel,
      'workRemote': instance.workRemote,
      'immediateIncorporation': instance.immediateIncorporation,
      'stacks': instance.stacks,
      'socialLinks': instance.socialLinks,
    };

_$EmailNotVerified _$_$EmailNotVerifiedFromJson(Map<String, dynamic> json) {
  return _$EmailNotVerified();
}

Map<String, dynamic> _$_$EmailNotVerifiedToJson(_$EmailNotVerified instance) =>
    <String, dynamic>{};

_$IsNotCreateInformation _$_$IsNotCreateInformationFromJson(
    Map<String, dynamic> json) {
  return _$IsNotCreateInformation(
    emailAddress: json['emailAddress'] as String,
    nickname: json['nickname'] as String,
    avatarImage: json['avatarImage'] as String?,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$IsNotCreateInformationToJson(
        _$IsNotCreateInformation instance) =>
    <String, dynamic>{
      'emailAddress': instance.emailAddress,
      'nickname': instance.nickname,
      'avatarImage': instance.avatarImage,
      'name': instance.name,
    };

_$Github _$_$GithubFromJson(Map<String, dynamic> json) {
  return _$Github(
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$_$GithubToJson(_$Github instance) => <String, dynamic>{
      'link': instance.link,
    };

_$Linkedin _$_$LinkedinFromJson(Map<String, dynamic> json) {
  return _$Linkedin(
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$_$LinkedinToJson(_$Linkedin instance) =>
    <String, dynamic>{
      'link': instance.link,
    };

_$Twitter _$_$TwitterFromJson(Map<String, dynamic> json) {
  return _$Twitter(
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$_$TwitterToJson(_$Twitter instance) => <String, dynamic>{
      'link': instance.link,
    };

_$Instagram _$_$InstagramFromJson(Map<String, dynamic> json) {
  return _$Instagram(
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$_$InstagramToJson(_$Instagram instance) =>
    <String, dynamic>{
      'link': instance.link,
    };

_$Portafolio _$_$PortafolioFromJson(Map<String, dynamic> json) {
  return _$Portafolio(
    link: json['link'] as String,
  );
}

Map<String, dynamic> _$_$PortafolioToJson(_$Portafolio instance) =>
    <String, dynamic>{
      'link': instance.link,
    };
