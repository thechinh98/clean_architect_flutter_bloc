import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/entities/user_info_entity.dart';
import '../../../presentation/utils/strings_constant.dart';

const String prefUserIdKey = 'prefUserIdKey';
const String prefUserTokenKey = 'prefUserTokenKey';
const String prefRefreshTokenKey = 'prefRefreshTokenKey';
const String prefUserFirstNameKey = 'prefUserFirstNameKey';
const String prefUserLastNameKey = 'prefUserLastNameKey';
const String prefUserAvatarKey = 'prefUserAvatarKey';
const String prefUserAddressKey = 'prefUserAddressKey';
const String prefHasProfileKey = 'prefHasProfileKey';
const String prefIsEmailSentKey = 'prefIsEmailSentKey';
const String prefIsEditingProfileKey = 'prefIsEditingProfileKey';
const String prefCountryCodeKey = 'prefCountryCodeKey';
const String prefPhoneNumberKey = 'prefPhoneNumberKey';
const String prefIsSetupCompleteKey = 'prefIsSetupCompleteKey';

class AuthLocalDataSource {
  AuthLocalDataSource({required this.preferences});

  SharedPreferences preferences;

  Future<UserInfoEntity> getUserInfo() async {
    final String profileId =
        preferences.getString(prefUserIdKey) ?? kEmptyString;
    final String accessToken =
        preferences.getString(prefUserTokenKey) ?? kEmptyString;
    final String phoneNumber =
        preferences.getString(prefPhoneNumberKey) ?? kEmptyString;
    final String refreshToken =
        preferences.getString(prefRefreshTokenKey) ?? kEmptyString;
    final String firstName =
        preferences.getString(prefUserFirstNameKey) ?? kEmptyString;
    final String lastName =
        preferences.getString(prefUserLastNameKey) ?? kEmptyString;
    final String avatarUrl =
        preferences.getString(prefUserAvatarKey) ?? kEmptyString;
    final String address =
        preferences.getString(prefUserAddressKey) ?? kEmptyString;
    final String countryCode =
        preferences.getString(prefCountryCodeKey) ?? kEmptyString;
    final bool isEmailSent = preferences.getBool(prefIsEmailSentKey) ?? false;
    final bool hasProfile = preferences.getBool(prefHasProfileKey) ?? false;
    final bool isEditingProfile =
        preferences.getBool(prefIsEditingProfileKey) ?? false;
    final bool isSetupComplete =
        preferences.getBool(prefIsSetupCompleteKey) ?? false;
    return UserInfoEntity(
        profileId: profileId,
        firstName: firstName,
        lastName: lastName,
        countryCode: countryCode,
        isEmailSent: isEmailSent,
        avatarUrl: avatarUrl,
        refreshToken: refreshToken,
        address: address,
        accessToken: accessToken,
        hasProfile: hasProfile,
        isEditingProfile: isEditingProfile,
        phoneNumber: phoneNumber,
        isSetupComplete: isSetupComplete);
  }
}
