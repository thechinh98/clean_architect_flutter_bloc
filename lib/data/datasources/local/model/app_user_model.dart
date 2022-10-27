import 'package:hive/hive.dart';
import '/common/extensions/string_extension.dart';

part 'app_user_model.g.dart';
@HiveType(typeId: 9)
class AppUserModel extends HiveObject {
  AppUserModel({
    this.profileId,
    this.firstName,
    this.lastName,
    this.avatarUrl,
    this.phoneNumber,
    this.addressPolitical,
    this.accessToken,
    this.countryCode,
    this.emailStatus,
    this.email,
  });

  static const String boxGroupChannel = 'app_user_model_group_channel';

  @HiveField(0)
  final String? profileId;
  @HiveField(1)
  final String? firstName;
  @HiveField(2)
  final String? lastName;
  @HiveField(3)
  final String? avatarUrl;
  @HiveField(4)
  final String? phoneNumber;
  @HiveField(5)
  final String? countryCode;
  @HiveField(6)
  final String? addressPolitical;
  @HiveField(7)
  final String? accessToken;
  @HiveField(8)
  final int? emailStatus;
  @HiveField(9)
  final String? email;

  AppUserModel copyWith(AppUserModel model) {
    return AppUserModel(
      profileId: model.profileId.isEmptyOrNull() ? profileId : model.profileId,
      firstName: model.firstName.isEmptyOrNull() ? firstName : model.firstName,
      lastName: model.lastName.isEmptyOrNull() ? lastName : model.lastName,
      avatarUrl: model.avatarUrl.isEmptyOrNull() ? avatarUrl : model.avatarUrl,
      phoneNumber:
          model.phoneNumber.isEmptyOrNull() ? phoneNumber : model.phoneNumber,
      countryCode:
          model.countryCode.isEmptyOrNull() ? countryCode : model.countryCode,
      addressPolitical: model.addressPolitical.isEmptyOrNull()
          ? addressPolitical
          : model.addressPolitical,
      accessToken:
          model.accessToken.isEmptyOrNull() ? accessToken : model.accessToken,
      emailStatus: model.emailStatus ?? emailStatus,
      email: model.email ?? email,
    );
  }

  @override
  String toString() {
    return 'profileId:$profileId, firstName:$firstName, lastName: $lastName,'
        ' avatar:$avatarUrl, phone:$phoneNumber, countryCode:$countryCode, '
        'token:$accessToken ';
  }
}
