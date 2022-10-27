import 'package:shared_preferences/shared_preferences.dart';


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

class AuthLocalDataSource{
  AuthLocalDataSource({required this.preferences});
  SharedPreferences preferences;
}