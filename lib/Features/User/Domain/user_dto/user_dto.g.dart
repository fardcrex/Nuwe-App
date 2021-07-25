// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$_$_UserFromJson(Map<String, dynamic> json) {
  return _$_User(
    isEmailVerified: json['isEmailVerified'] as bool? ?? false,
    emailAddress: json['emailAddress'] as String,
    nickname: json['nickname'] as String,
    avatarImage: json['avatarImage'] as String?,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$_$_UserToJson(_$_User instance) => <String, dynamic>{
      'isEmailVerified': instance.isEmailVerified,
      'emailAddress': instance.emailAddress,
      'nickname': instance.nickname,
      'avatarImage': instance.avatarImage,
      'name': instance.name,
    };
