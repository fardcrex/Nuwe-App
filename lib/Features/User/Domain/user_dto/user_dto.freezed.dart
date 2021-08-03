// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return UserData.fromJson(json);
    case 'emailNotVerified':
      return EmailNotVerified.fromJson(json);
    case 'isNotCreateInformation':
      return IsNotCreateInformation.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  UserData call(
      {required String emailAddress,
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
      bool receiveNotificationFromCompanies = false,
      bool disponibilityToTravel = false,
      bool workRemote = false,
      bool immediateIncorporation = false,
      List<String> stacks = const [],
      @JsonKey(name: User.SOCIAL_LINKS)
          required List<SocialLink> socialLinks}) {
    return UserData(
      emailAddress: emailAddress,
      nickname: nickname,
      avatarImage: avatarImage,
      name: name,
      country: country,
      city: city,
      bio: bio,
      age: age,
      lookingWork: lookingWork,
      desiredJob: desiredJob,
      location: location,
      salaryRange: salaryRange,
      receiveNotificationFromCompanies: receiveNotificationFromCompanies,
      disponibilityToTravel: disponibilityToTravel,
      workRemote: workRemote,
      immediateIncorporation: immediateIncorporation,
      stacks: stacks,
      socialLinks: socialLinks,
    );
  }

  EmailNotVerified emailNotVerified() {
    return EmailNotVerified();
  }

  IsNotCreateInformation isNotCreateInformation(
      {required String emailAddress,
      required String nickname,
      String? avatarImage,
      required String name}) {
    return IsNotCreateInformation(
      emailAddress: emailAddress,
      nickname: nickname,
      avatarImage: avatarImage,
      name: name,
    );
  }

  User fromJson(Map<String, Object> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String emailAddress,
            String nickname,
            String? avatarImage,
            String name,
            String country,
            String city,
            String? bio,
            int age,
            String? lookingWork,
            String desiredJob,
            String? location,
            int? salaryRange,
            bool receiveNotificationFromCompanies,
            bool disponibilityToTravel,
            bool workRemote,
            bool immediateIncorporation,
            List<String> stacks,
            @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks)
        $default, {
    required TResult Function() emailNotVerified,
    required TResult Function(String emailAddress, String nickname,
            String? avatarImage, String name)
        isNotCreateInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String emailAddress,
            String nickname,
            String? avatarImage,
            String name,
            String country,
            String city,
            String? bio,
            int age,
            String? lookingWork,
            String desiredJob,
            String? location,
            int? salaryRange,
            bool receiveNotificationFromCompanies,
            bool disponibilityToTravel,
            bool workRemote,
            bool immediateIncorporation,
            List<String> stacks,
            @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks)?
        $default, {
    TResult Function()? emailNotVerified,
    TResult Function(String emailAddress, String nickname, String? avatarImage,
            String name)?
        isNotCreateInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserData value) $default, {
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(IsNotCreateInformation value)
        isNotCreateInformation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(IsNotCreateInformation value)? isNotCreateInformation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress,
      String nickname,
      String? avatarImage,
      String name,
      String country,
      String city,
      String? bio,
      int age,
      String? lookingWork,
      String desiredJob,
      String? location,
      int? salaryRange,
      bool receiveNotificationFromCompanies,
      bool disponibilityToTravel,
      bool workRemote,
      bool immediateIncorporation,
      List<String> stacks,
      @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(UserData _value, $Res Function(UserData) _then)
      : super(_value, (v) => _then(v as UserData));

  @override
  UserData get _value => super._value as UserData;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? nickname = freezed,
    Object? avatarImage = freezed,
    Object? name = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? bio = freezed,
    Object? age = freezed,
    Object? lookingWork = freezed,
    Object? desiredJob = freezed,
    Object? location = freezed,
    Object? salaryRange = freezed,
    Object? receiveNotificationFromCompanies = freezed,
    Object? disponibilityToTravel = freezed,
    Object? workRemote = freezed,
    Object? immediateIncorporation = freezed,
    Object? stacks = freezed,
    Object? socialLinks = freezed,
  }) {
    return _then(UserData(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      avatarImage: avatarImage == freezed
          ? _value.avatarImage
          : avatarImage // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      bio: bio == freezed
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      lookingWork: lookingWork == freezed
          ? _value.lookingWork
          : lookingWork // ignore: cast_nullable_to_non_nullable
              as String?,
      desiredJob: desiredJob == freezed
          ? _value.desiredJob
          : desiredJob // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      salaryRange: salaryRange == freezed
          ? _value.salaryRange
          : salaryRange // ignore: cast_nullable_to_non_nullable
              as int?,
      receiveNotificationFromCompanies: receiveNotificationFromCompanies ==
              freezed
          ? _value.receiveNotificationFromCompanies
          : receiveNotificationFromCompanies // ignore: cast_nullable_to_non_nullable
              as bool,
      disponibilityToTravel: disponibilityToTravel == freezed
          ? _value.disponibilityToTravel
          : disponibilityToTravel // ignore: cast_nullable_to_non_nullable
              as bool,
      workRemote: workRemote == freezed
          ? _value.workRemote
          : workRemote // ignore: cast_nullable_to_non_nullable
              as bool,
      immediateIncorporation: immediateIncorporation == freezed
          ? _value.immediateIncorporation
          : immediateIncorporation // ignore: cast_nullable_to_non_nullable
              as bool,
      stacks: stacks == freezed
          ? _value.stacks
          : stacks // ignore: cast_nullable_to_non_nullable
              as List<String>,
      socialLinks: socialLinks == freezed
          ? _value.socialLinks
          : socialLinks // ignore: cast_nullable_to_non_nullable
              as List<SocialLink>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserData implements UserData {
  _$UserData(
      {required this.emailAddress,
      required this.nickname,
      this.avatarImage,
      required this.name,
      required this.country,
      required this.city,
      this.bio,
      required this.age,
      this.lookingWork,
      required this.desiredJob,
      this.location,
      this.salaryRange,
      this.receiveNotificationFromCompanies = false,
      this.disponibilityToTravel = false,
      this.workRemote = false,
      this.immediateIncorporation = false,
      this.stacks = const [],
      @JsonKey(name: User.SOCIAL_LINKS) required this.socialLinks});

  factory _$UserData.fromJson(Map<String, dynamic> json) =>
      _$_$UserDataFromJson(json);

  @override
  final String emailAddress;
  @override
  final String nickname;
  @override
  final String? avatarImage;
  @override
  final String name;
  @override
  final String country;
  @override
  final String city;
  @override
  final String? bio;
  @override
  final int age;
  @override
  final String? lookingWork;
  @override
  final String desiredJob;
  @override
  final String? location;
  @override
  final int? salaryRange;
  @JsonKey(defaultValue: false)
  @override
  final bool receiveNotificationFromCompanies;
  @JsonKey(defaultValue: false)
  @override
  final bool disponibilityToTravel;
  @JsonKey(defaultValue: false)
  @override
  final bool workRemote;
  @JsonKey(defaultValue: false)
  @override
  final bool immediateIncorporation;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> stacks;
  @override
  @JsonKey(name: User.SOCIAL_LINKS)
  final List<SocialLink> socialLinks;

  @override
  String toString() {
    return 'User(emailAddress: $emailAddress, nickname: $nickname, avatarImage: $avatarImage, name: $name, country: $country, city: $city, bio: $bio, age: $age, lookingWork: $lookingWork, desiredJob: $desiredJob, location: $location, salaryRange: $salaryRange, receiveNotificationFromCompanies: $receiveNotificationFromCompanies, disponibilityToTravel: $disponibilityToTravel, workRemote: $workRemote, immediateIncorporation: $immediateIncorporation, stacks: $stacks, socialLinks: $socialLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserData &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.avatarImage, avatarImage) ||
                const DeepCollectionEquality()
                    .equals(other.avatarImage, avatarImage)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.city, city) ||
                const DeepCollectionEquality().equals(other.city, city)) &&
            (identical(other.bio, bio) ||
                const DeepCollectionEquality().equals(other.bio, bio)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.lookingWork, lookingWork) ||
                const DeepCollectionEquality()
                    .equals(other.lookingWork, lookingWork)) &&
            (identical(other.desiredJob, desiredJob) ||
                const DeepCollectionEquality()
                    .equals(other.desiredJob, desiredJob)) &&
            (identical(other.location, location) ||
                const DeepCollectionEquality()
                    .equals(other.location, location)) &&
            (identical(other.salaryRange, salaryRange) ||
                const DeepCollectionEquality()
                    .equals(other.salaryRange, salaryRange)) &&
            (identical(other.receiveNotificationFromCompanies,
                    receiveNotificationFromCompanies) ||
                const DeepCollectionEquality().equals(
                    other.receiveNotificationFromCompanies,
                    receiveNotificationFromCompanies)) &&
            (identical(other.disponibilityToTravel, disponibilityToTravel) ||
                const DeepCollectionEquality().equals(
                    other.disponibilityToTravel, disponibilityToTravel)) &&
            (identical(other.workRemote, workRemote) ||
                const DeepCollectionEquality()
                    .equals(other.workRemote, workRemote)) &&
            (identical(other.immediateIncorporation, immediateIncorporation) ||
                const DeepCollectionEquality().equals(
                    other.immediateIncorporation, immediateIncorporation)) &&
            (identical(other.stacks, stacks) ||
                const DeepCollectionEquality().equals(other.stacks, stacks)) &&
            (identical(other.socialLinks, socialLinks) ||
                const DeepCollectionEquality()
                    .equals(other.socialLinks, socialLinks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(avatarImage) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(city) ^
      const DeepCollectionEquality().hash(bio) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(lookingWork) ^
      const DeepCollectionEquality().hash(desiredJob) ^
      const DeepCollectionEquality().hash(location) ^
      const DeepCollectionEquality().hash(salaryRange) ^
      const DeepCollectionEquality().hash(receiveNotificationFromCompanies) ^
      const DeepCollectionEquality().hash(disponibilityToTravel) ^
      const DeepCollectionEquality().hash(workRemote) ^
      const DeepCollectionEquality().hash(immediateIncorporation) ^
      const DeepCollectionEquality().hash(stacks) ^
      const DeepCollectionEquality().hash(socialLinks);

  @JsonKey(ignore: true)
  @override
  $UserDataCopyWith<UserData> get copyWith =>
      _$UserDataCopyWithImpl<UserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String emailAddress,
            String nickname,
            String? avatarImage,
            String name,
            String country,
            String city,
            String? bio,
            int age,
            String? lookingWork,
            String desiredJob,
            String? location,
            int? salaryRange,
            bool receiveNotificationFromCompanies,
            bool disponibilityToTravel,
            bool workRemote,
            bool immediateIncorporation,
            List<String> stacks,
            @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks)
        $default, {
    required TResult Function() emailNotVerified,
    required TResult Function(String emailAddress, String nickname,
            String? avatarImage, String name)
        isNotCreateInformation,
  }) {
    return $default(
        emailAddress,
        nickname,
        avatarImage,
        name,
        country,
        city,
        bio,
        age,
        lookingWork,
        desiredJob,
        location,
        salaryRange,
        receiveNotificationFromCompanies,
        disponibilityToTravel,
        workRemote,
        immediateIncorporation,
        stacks,
        socialLinks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String emailAddress,
            String nickname,
            String? avatarImage,
            String name,
            String country,
            String city,
            String? bio,
            int age,
            String? lookingWork,
            String desiredJob,
            String? location,
            int? salaryRange,
            bool receiveNotificationFromCompanies,
            bool disponibilityToTravel,
            bool workRemote,
            bool immediateIncorporation,
            List<String> stacks,
            @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks)?
        $default, {
    TResult Function()? emailNotVerified,
    TResult Function(String emailAddress, String nickname, String? avatarImage,
            String name)?
        isNotCreateInformation,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(
          emailAddress,
          nickname,
          avatarImage,
          name,
          country,
          city,
          bio,
          age,
          lookingWork,
          desiredJob,
          location,
          salaryRange,
          receiveNotificationFromCompanies,
          disponibilityToTravel,
          workRemote,
          immediateIncorporation,
          stacks,
          socialLinks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserData value) $default, {
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(IsNotCreateInformation value)
        isNotCreateInformation,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(IsNotCreateInformation value)? isNotCreateInformation,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserDataToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class UserData implements User {
  factory UserData(
      {required String emailAddress,
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
      bool receiveNotificationFromCompanies,
      bool disponibilityToTravel,
      bool workRemote,
      bool immediateIncorporation,
      List<String> stacks,
      @JsonKey(name: User.SOCIAL_LINKS)
          required List<SocialLink> socialLinks}) = _$UserData;

  factory UserData.fromJson(Map<String, dynamic> json) = _$UserData.fromJson;

  String get emailAddress => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get avatarImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  String? get lookingWork => throw _privateConstructorUsedError;
  String get desiredJob => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  int? get salaryRange => throw _privateConstructorUsedError;
  bool get receiveNotificationFromCompanies =>
      throw _privateConstructorUsedError;
  bool get disponibilityToTravel => throw _privateConstructorUsedError;
  bool get workRemote => throw _privateConstructorUsedError;
  bool get immediateIncorporation => throw _privateConstructorUsedError;
  List<String> get stacks => throw _privateConstructorUsedError;
  @JsonKey(name: User.SOCIAL_LINKS)
  List<SocialLink> get socialLinks => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmailNotVerifiedCopyWith<$Res> {
  factory $EmailNotVerifiedCopyWith(
          EmailNotVerified value, $Res Function(EmailNotVerified) then) =
      _$EmailNotVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailNotVerifiedCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $EmailNotVerifiedCopyWith<$Res> {
  _$EmailNotVerifiedCopyWithImpl(
      EmailNotVerified _value, $Res Function(EmailNotVerified) _then)
      : super(_value, (v) => _then(v as EmailNotVerified));

  @override
  EmailNotVerified get _value => super._value as EmailNotVerified;
}

/// @nodoc
@JsonSerializable()
class _$EmailNotVerified implements EmailNotVerified {
  _$EmailNotVerified();

  factory _$EmailNotVerified.fromJson(Map<String, dynamic> json) =>
      _$_$EmailNotVerifiedFromJson(json);

  @override
  String toString() {
    return 'User.emailNotVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String emailAddress,
            String nickname,
            String? avatarImage,
            String name,
            String country,
            String city,
            String? bio,
            int age,
            String? lookingWork,
            String desiredJob,
            String? location,
            int? salaryRange,
            bool receiveNotificationFromCompanies,
            bool disponibilityToTravel,
            bool workRemote,
            bool immediateIncorporation,
            List<String> stacks,
            @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks)
        $default, {
    required TResult Function() emailNotVerified,
    required TResult Function(String emailAddress, String nickname,
            String? avatarImage, String name)
        isNotCreateInformation,
  }) {
    return emailNotVerified();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String emailAddress,
            String nickname,
            String? avatarImage,
            String name,
            String country,
            String city,
            String? bio,
            int age,
            String? lookingWork,
            String desiredJob,
            String? location,
            int? salaryRange,
            bool receiveNotificationFromCompanies,
            bool disponibilityToTravel,
            bool workRemote,
            bool immediateIncorporation,
            List<String> stacks,
            @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks)?
        $default, {
    TResult Function()? emailNotVerified,
    TResult Function(String emailAddress, String nickname, String? avatarImage,
            String name)?
        isNotCreateInformation,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserData value) $default, {
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(IsNotCreateInformation value)
        isNotCreateInformation,
  }) {
    return emailNotVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(IsNotCreateInformation value)? isNotCreateInformation,
    required TResult orElse(),
  }) {
    if (emailNotVerified != null) {
      return emailNotVerified(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$EmailNotVerifiedToJson(this)
      ..['runtimeType'] = 'emailNotVerified';
  }
}

abstract class EmailNotVerified implements User {
  factory EmailNotVerified() = _$EmailNotVerified;

  factory EmailNotVerified.fromJson(Map<String, dynamic> json) =
      _$EmailNotVerified.fromJson;
}

/// @nodoc
abstract class $IsNotCreateInformationCopyWith<$Res> {
  factory $IsNotCreateInformationCopyWith(IsNotCreateInformation value,
          $Res Function(IsNotCreateInformation) then) =
      _$IsNotCreateInformationCopyWithImpl<$Res>;
  $Res call(
      {String emailAddress, String nickname, String? avatarImage, String name});
}

/// @nodoc
class _$IsNotCreateInformationCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res>
    implements $IsNotCreateInformationCopyWith<$Res> {
  _$IsNotCreateInformationCopyWithImpl(IsNotCreateInformation _value,
      $Res Function(IsNotCreateInformation) _then)
      : super(_value, (v) => _then(v as IsNotCreateInformation));

  @override
  IsNotCreateInformation get _value => super._value as IsNotCreateInformation;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? nickname = freezed,
    Object? avatarImage = freezed,
    Object? name = freezed,
  }) {
    return _then(IsNotCreateInformation(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      nickname: nickname == freezed
          ? _value.nickname
          : nickname // ignore: cast_nullable_to_non_nullable
              as String,
      avatarImage: avatarImage == freezed
          ? _value.avatarImage
          : avatarImage // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IsNotCreateInformation implements IsNotCreateInformation {
  _$IsNotCreateInformation(
      {required this.emailAddress,
      required this.nickname,
      this.avatarImage,
      required this.name});

  factory _$IsNotCreateInformation.fromJson(Map<String, dynamic> json) =>
      _$_$IsNotCreateInformationFromJson(json);

  @override
  final String emailAddress;
  @override
  final String nickname;
  @override
  final String? avatarImage;
  @override
  final String name;

  @override
  String toString() {
    return 'User.isNotCreateInformation(emailAddress: $emailAddress, nickname: $nickname, avatarImage: $avatarImage, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is IsNotCreateInformation &&
            (identical(other.emailAddress, emailAddress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAddress, emailAddress)) &&
            (identical(other.nickname, nickname) ||
                const DeepCollectionEquality()
                    .equals(other.nickname, nickname)) &&
            (identical(other.avatarImage, avatarImage) ||
                const DeepCollectionEquality()
                    .equals(other.avatarImage, avatarImage)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAddress) ^
      const DeepCollectionEquality().hash(nickname) ^
      const DeepCollectionEquality().hash(avatarImage) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  $IsNotCreateInformationCopyWith<IsNotCreateInformation> get copyWith =>
      _$IsNotCreateInformationCopyWithImpl<IsNotCreateInformation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String emailAddress,
            String nickname,
            String? avatarImage,
            String name,
            String country,
            String city,
            String? bio,
            int age,
            String? lookingWork,
            String desiredJob,
            String? location,
            int? salaryRange,
            bool receiveNotificationFromCompanies,
            bool disponibilityToTravel,
            bool workRemote,
            bool immediateIncorporation,
            List<String> stacks,
            @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks)
        $default, {
    required TResult Function() emailNotVerified,
    required TResult Function(String emailAddress, String nickname,
            String? avatarImage, String name)
        isNotCreateInformation,
  }) {
    return isNotCreateInformation(emailAddress, nickname, avatarImage, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String emailAddress,
            String nickname,
            String? avatarImage,
            String name,
            String country,
            String city,
            String? bio,
            int age,
            String? lookingWork,
            String desiredJob,
            String? location,
            int? salaryRange,
            bool receiveNotificationFromCompanies,
            bool disponibilityToTravel,
            bool workRemote,
            bool immediateIncorporation,
            List<String> stacks,
            @JsonKey(name: User.SOCIAL_LINKS) List<SocialLink> socialLinks)?
        $default, {
    TResult Function()? emailNotVerified,
    TResult Function(String emailAddress, String nickname, String? avatarImage,
            String name)?
        isNotCreateInformation,
    required TResult orElse(),
  }) {
    if (isNotCreateInformation != null) {
      return isNotCreateInformation(emailAddress, nickname, avatarImage, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserData value) $default, {
    required TResult Function(EmailNotVerified value) emailNotVerified,
    required TResult Function(IsNotCreateInformation value)
        isNotCreateInformation,
  }) {
    return isNotCreateInformation(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserData value)? $default, {
    TResult Function(EmailNotVerified value)? emailNotVerified,
    TResult Function(IsNotCreateInformation value)? isNotCreateInformation,
    required TResult orElse(),
  }) {
    if (isNotCreateInformation != null) {
      return isNotCreateInformation(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$IsNotCreateInformationToJson(this)
      ..['runtimeType'] = 'isNotCreateInformation';
  }
}

abstract class IsNotCreateInformation implements User {
  factory IsNotCreateInformation(
      {required String emailAddress,
      required String nickname,
      String? avatarImage,
      required String name}) = _$IsNotCreateInformation;

  factory IsNotCreateInformation.fromJson(Map<String, dynamic> json) =
      _$IsNotCreateInformation.fromJson;

  String get emailAddress => throw _privateConstructorUsedError;
  String get nickname => throw _privateConstructorUsedError;
  String? get avatarImage => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsNotCreateInformationCopyWith<IsNotCreateInformation> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialLink _$SocialLinkFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'github':
      return Github.fromJson(json);
    case 'linkedin':
      return Linkedin.fromJson(json);
    case 'twitter':
      return Twitter.fromJson(json);
    case 'instagram':
      return Instagram.fromJson(json);
    case 'portafolio':
      return Portafolio.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$SocialLinkTearOff {
  const _$SocialLinkTearOff();

  Github github({required String link}) {
    return Github(
      link: link,
    );
  }

  Linkedin linkedin({required String link}) {
    return Linkedin(
      link: link,
    );
  }

  Twitter twitter({required String link}) {
    return Twitter(
      link: link,
    );
  }

  Instagram instagram({required String link}) {
    return Instagram(
      link: link,
    );
  }

  Portafolio portafolio({required String link}) {
    return Portafolio(
      link: link,
    );
  }

  SocialLink fromJson(Map<String, Object> json) {
    return SocialLink.fromJson(json);
  }
}

/// @nodoc
const $SocialLink = _$SocialLinkTearOff();

/// @nodoc
mixin _$SocialLink {
  String get link => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) github,
    required TResult Function(String link) linkedin,
    required TResult Function(String link) twitter,
    required TResult Function(String link) instagram,
    required TResult Function(String link) portafolio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? github,
    TResult Function(String link)? linkedin,
    TResult Function(String link)? twitter,
    TResult Function(String link)? instagram,
    TResult Function(String link)? portafolio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Github value) github,
    required TResult Function(Linkedin value) linkedin,
    required TResult Function(Twitter value) twitter,
    required TResult Function(Instagram value) instagram,
    required TResult Function(Portafolio value) portafolio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Github value)? github,
    TResult Function(Linkedin value)? linkedin,
    TResult Function(Twitter value)? twitter,
    TResult Function(Instagram value)? instagram,
    TResult Function(Portafolio value)? portafolio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialLinkCopyWith<SocialLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialLinkCopyWith<$Res> {
  factory $SocialLinkCopyWith(
          SocialLink value, $Res Function(SocialLink) then) =
      _$SocialLinkCopyWithImpl<$Res>;
  $Res call({String link});
}

/// @nodoc
class _$SocialLinkCopyWithImpl<$Res> implements $SocialLinkCopyWith<$Res> {
  _$SocialLinkCopyWithImpl(this._value, this._then);

  final SocialLink _value;
  // ignore: unused_field
  final $Res Function(SocialLink) _then;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GithubCopyWith<$Res> implements $SocialLinkCopyWith<$Res> {
  factory $GithubCopyWith(Github value, $Res Function(Github) then) =
      _$GithubCopyWithImpl<$Res>;
  @override
  $Res call({String link});
}

/// @nodoc
class _$GithubCopyWithImpl<$Res> extends _$SocialLinkCopyWithImpl<$Res>
    implements $GithubCopyWith<$Res> {
  _$GithubCopyWithImpl(Github _value, $Res Function(Github) _then)
      : super(_value, (v) => _then(v as Github));

  @override
  Github get _value => super._value as Github;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(Github(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Github implements Github {
  const _$Github({required this.link});

  factory _$Github.fromJson(Map<String, dynamic> json) =>
      _$_$GithubFromJson(json);

  @override
  final String link;

  @override
  String toString() {
    return 'SocialLink.github(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Github &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  $GithubCopyWith<Github> get copyWith =>
      _$GithubCopyWithImpl<Github>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) github,
    required TResult Function(String link) linkedin,
    required TResult Function(String link) twitter,
    required TResult Function(String link) instagram,
    required TResult Function(String link) portafolio,
  }) {
    return github(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? github,
    TResult Function(String link)? linkedin,
    TResult Function(String link)? twitter,
    TResult Function(String link)? instagram,
    TResult Function(String link)? portafolio,
    required TResult orElse(),
  }) {
    if (github != null) {
      return github(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Github value) github,
    required TResult Function(Linkedin value) linkedin,
    required TResult Function(Twitter value) twitter,
    required TResult Function(Instagram value) instagram,
    required TResult Function(Portafolio value) portafolio,
  }) {
    return github(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Github value)? github,
    TResult Function(Linkedin value)? linkedin,
    TResult Function(Twitter value)? twitter,
    TResult Function(Instagram value)? instagram,
    TResult Function(Portafolio value)? portafolio,
    required TResult orElse(),
  }) {
    if (github != null) {
      return github(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$GithubToJson(this)..['runtimeType'] = 'github';
  }
}

abstract class Github implements SocialLink {
  const factory Github({required String link}) = _$Github;

  factory Github.fromJson(Map<String, dynamic> json) = _$Github.fromJson;

  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $GithubCopyWith<Github> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkedinCopyWith<$Res> implements $SocialLinkCopyWith<$Res> {
  factory $LinkedinCopyWith(Linkedin value, $Res Function(Linkedin) then) =
      _$LinkedinCopyWithImpl<$Res>;
  @override
  $Res call({String link});
}

/// @nodoc
class _$LinkedinCopyWithImpl<$Res> extends _$SocialLinkCopyWithImpl<$Res>
    implements $LinkedinCopyWith<$Res> {
  _$LinkedinCopyWithImpl(Linkedin _value, $Res Function(Linkedin) _then)
      : super(_value, (v) => _then(v as Linkedin));

  @override
  Linkedin get _value => super._value as Linkedin;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(Linkedin(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Linkedin implements Linkedin {
  const _$Linkedin({required this.link});

  factory _$Linkedin.fromJson(Map<String, dynamic> json) =>
      _$_$LinkedinFromJson(json);

  @override
  final String link;

  @override
  String toString() {
    return 'SocialLink.linkedin(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Linkedin &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  $LinkedinCopyWith<Linkedin> get copyWith =>
      _$LinkedinCopyWithImpl<Linkedin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) github,
    required TResult Function(String link) linkedin,
    required TResult Function(String link) twitter,
    required TResult Function(String link) instagram,
    required TResult Function(String link) portafolio,
  }) {
    return linkedin(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? github,
    TResult Function(String link)? linkedin,
    TResult Function(String link)? twitter,
    TResult Function(String link)? instagram,
    TResult Function(String link)? portafolio,
    required TResult orElse(),
  }) {
    if (linkedin != null) {
      return linkedin(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Github value) github,
    required TResult Function(Linkedin value) linkedin,
    required TResult Function(Twitter value) twitter,
    required TResult Function(Instagram value) instagram,
    required TResult Function(Portafolio value) portafolio,
  }) {
    return linkedin(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Github value)? github,
    TResult Function(Linkedin value)? linkedin,
    TResult Function(Twitter value)? twitter,
    TResult Function(Instagram value)? instagram,
    TResult Function(Portafolio value)? portafolio,
    required TResult orElse(),
  }) {
    if (linkedin != null) {
      return linkedin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LinkedinToJson(this)..['runtimeType'] = 'linkedin';
  }
}

abstract class Linkedin implements SocialLink {
  const factory Linkedin({required String link}) = _$Linkedin;

  factory Linkedin.fromJson(Map<String, dynamic> json) = _$Linkedin.fromJson;

  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LinkedinCopyWith<Linkedin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TwitterCopyWith<$Res> implements $SocialLinkCopyWith<$Res> {
  factory $TwitterCopyWith(Twitter value, $Res Function(Twitter) then) =
      _$TwitterCopyWithImpl<$Res>;
  @override
  $Res call({String link});
}

/// @nodoc
class _$TwitterCopyWithImpl<$Res> extends _$SocialLinkCopyWithImpl<$Res>
    implements $TwitterCopyWith<$Res> {
  _$TwitterCopyWithImpl(Twitter _value, $Res Function(Twitter) _then)
      : super(_value, (v) => _then(v as Twitter));

  @override
  Twitter get _value => super._value as Twitter;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(Twitter(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Twitter implements Twitter {
  const _$Twitter({required this.link});

  factory _$Twitter.fromJson(Map<String, dynamic> json) =>
      _$_$TwitterFromJson(json);

  @override
  final String link;

  @override
  String toString() {
    return 'SocialLink.twitter(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Twitter &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  $TwitterCopyWith<Twitter> get copyWith =>
      _$TwitterCopyWithImpl<Twitter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) github,
    required TResult Function(String link) linkedin,
    required TResult Function(String link) twitter,
    required TResult Function(String link) instagram,
    required TResult Function(String link) portafolio,
  }) {
    return twitter(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? github,
    TResult Function(String link)? linkedin,
    TResult Function(String link)? twitter,
    TResult Function(String link)? instagram,
    TResult Function(String link)? portafolio,
    required TResult orElse(),
  }) {
    if (twitter != null) {
      return twitter(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Github value) github,
    required TResult Function(Linkedin value) linkedin,
    required TResult Function(Twitter value) twitter,
    required TResult Function(Instagram value) instagram,
    required TResult Function(Portafolio value) portafolio,
  }) {
    return twitter(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Github value)? github,
    TResult Function(Linkedin value)? linkedin,
    TResult Function(Twitter value)? twitter,
    TResult Function(Instagram value)? instagram,
    TResult Function(Portafolio value)? portafolio,
    required TResult orElse(),
  }) {
    if (twitter != null) {
      return twitter(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$TwitterToJson(this)..['runtimeType'] = 'twitter';
  }
}

abstract class Twitter implements SocialLink {
  const factory Twitter({required String link}) = _$Twitter;

  factory Twitter.fromJson(Map<String, dynamic> json) = _$Twitter.fromJson;

  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $TwitterCopyWith<Twitter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InstagramCopyWith<$Res> implements $SocialLinkCopyWith<$Res> {
  factory $InstagramCopyWith(Instagram value, $Res Function(Instagram) then) =
      _$InstagramCopyWithImpl<$Res>;
  @override
  $Res call({String link});
}

/// @nodoc
class _$InstagramCopyWithImpl<$Res> extends _$SocialLinkCopyWithImpl<$Res>
    implements $InstagramCopyWith<$Res> {
  _$InstagramCopyWithImpl(Instagram _value, $Res Function(Instagram) _then)
      : super(_value, (v) => _then(v as Instagram));

  @override
  Instagram get _value => super._value as Instagram;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(Instagram(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Instagram implements Instagram {
  const _$Instagram({required this.link});

  factory _$Instagram.fromJson(Map<String, dynamic> json) =>
      _$_$InstagramFromJson(json);

  @override
  final String link;

  @override
  String toString() {
    return 'SocialLink.instagram(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Instagram &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  $InstagramCopyWith<Instagram> get copyWith =>
      _$InstagramCopyWithImpl<Instagram>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) github,
    required TResult Function(String link) linkedin,
    required TResult Function(String link) twitter,
    required TResult Function(String link) instagram,
    required TResult Function(String link) portafolio,
  }) {
    return instagram(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? github,
    TResult Function(String link)? linkedin,
    TResult Function(String link)? twitter,
    TResult Function(String link)? instagram,
    TResult Function(String link)? portafolio,
    required TResult orElse(),
  }) {
    if (instagram != null) {
      return instagram(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Github value) github,
    required TResult Function(Linkedin value) linkedin,
    required TResult Function(Twitter value) twitter,
    required TResult Function(Instagram value) instagram,
    required TResult Function(Portafolio value) portafolio,
  }) {
    return instagram(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Github value)? github,
    TResult Function(Linkedin value)? linkedin,
    TResult Function(Twitter value)? twitter,
    TResult Function(Instagram value)? instagram,
    TResult Function(Portafolio value)? portafolio,
    required TResult orElse(),
  }) {
    if (instagram != null) {
      return instagram(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$InstagramToJson(this)..['runtimeType'] = 'instagram';
  }
}

abstract class Instagram implements SocialLink {
  const factory Instagram({required String link}) = _$Instagram;

  factory Instagram.fromJson(Map<String, dynamic> json) = _$Instagram.fromJson;

  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InstagramCopyWith<Instagram> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortafolioCopyWith<$Res> implements $SocialLinkCopyWith<$Res> {
  factory $PortafolioCopyWith(
          Portafolio value, $Res Function(Portafolio) then) =
      _$PortafolioCopyWithImpl<$Res>;
  @override
  $Res call({String link});
}

/// @nodoc
class _$PortafolioCopyWithImpl<$Res> extends _$SocialLinkCopyWithImpl<$Res>
    implements $PortafolioCopyWith<$Res> {
  _$PortafolioCopyWithImpl(Portafolio _value, $Res Function(Portafolio) _then)
      : super(_value, (v) => _then(v as Portafolio));

  @override
  Portafolio get _value => super._value as Portafolio;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(Portafolio(
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Portafolio implements Portafolio {
  const _$Portafolio({required this.link});

  factory _$Portafolio.fromJson(Map<String, dynamic> json) =>
      _$_$PortafolioFromJson(json);

  @override
  final String link;

  @override
  String toString() {
    return 'SocialLink.portafolio(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Portafolio &&
            (identical(other.link, link) ||
                const DeepCollectionEquality().equals(other.link, link)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(link);

  @JsonKey(ignore: true)
  @override
  $PortafolioCopyWith<Portafolio> get copyWith =>
      _$PortafolioCopyWithImpl<Portafolio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String link) github,
    required TResult Function(String link) linkedin,
    required TResult Function(String link) twitter,
    required TResult Function(String link) instagram,
    required TResult Function(String link) portafolio,
  }) {
    return portafolio(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String link)? github,
    TResult Function(String link)? linkedin,
    TResult Function(String link)? twitter,
    TResult Function(String link)? instagram,
    TResult Function(String link)? portafolio,
    required TResult orElse(),
  }) {
    if (portafolio != null) {
      return portafolio(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Github value) github,
    required TResult Function(Linkedin value) linkedin,
    required TResult Function(Twitter value) twitter,
    required TResult Function(Instagram value) instagram,
    required TResult Function(Portafolio value) portafolio,
  }) {
    return portafolio(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Github value)? github,
    TResult Function(Linkedin value)? linkedin,
    TResult Function(Twitter value)? twitter,
    TResult Function(Instagram value)? instagram,
    TResult Function(Portafolio value)? portafolio,
    required TResult orElse(),
  }) {
    if (portafolio != null) {
      return portafolio(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PortafolioToJson(this)..['runtimeType'] = 'portafolio';
  }
}

abstract class Portafolio implements SocialLink {
  const factory Portafolio({required String link}) = _$Portafolio;

  factory Portafolio.fromJson(Map<String, dynamic> json) =
      _$Portafolio.fromJson;

  @override
  String get link => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PortafolioCopyWith<Portafolio> get copyWith =>
      throw _privateConstructorUsedError;
}
