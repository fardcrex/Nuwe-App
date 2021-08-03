import 'package:dartz/dartz.dart';
import 'package:nuwe/Features/User/Domain/i_user_repository.dart';
import 'package:nuwe/Features/User/Domain/succes_failures.dart';
import 'package:nuwe/Features/User/Domain/user_dto/user_dto.dart';

class CreateUserInformation {
  final IUserRepository userRepository;

  const CreateUserInformation(this.userRepository);

  Future<Either<UserFailure, UserSuccess>> call({
    required IsNotCreateInformation userBasic,
    required String country,
    required String city,
    String? bio,
    required int age,
    required String lookingWork,
    required String desiredJob,
    required String location,
    required int salaryRange,
    bool receiveNotificationFromCompanies = false,
    bool disponibilityToTravel = false,
    bool workRemote = false,
    bool immediateIncorporation = false,
    required String githubLink,
    required String linkedinLink,
    required String twitterLink,
    required String instagramLink,
    required String portafolioLink,
    required List<String> stacks,
  }) {
    final user = UserData(
        emailAddress: userBasic.emailAddress,
        bio: bio,
        nickname: userBasic.nickname,
        name: userBasic.name,
        country: country,
        city: city,
        avatarImage: userBasic.avatarImage,
        disponibilityToTravel: disponibilityToTravel,
        immediateIncorporation: disponibilityToTravel,
        location: location,
        lookingWork: lookingWork,
        receiveNotificationFromCompanies: receiveNotificationFromCompanies,
        salaryRange: salaryRange,
        workRemote: workRemote,
        socialLinks: [
          if (githubLink.isNotEmpty) SocialLink.github(link: githubLink),
          if (linkedinLink.isNotEmpty) SocialLink.linkedin(link: linkedinLink),
          if (twitterLink.isNotEmpty) SocialLink.twitter(link: twitterLink),
          if (instagramLink.isNotEmpty) SocialLink.instagram(link: instagramLink),
          if (portafolioLink.isNotEmpty) SocialLink.portafolio(link: portafolioLink),
        ],
        stacks: stacks,
        age: age,
        desiredJob: desiredJob);

    return userRepository.createUserInformation(user);
  }
}
