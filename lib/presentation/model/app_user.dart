import 'dart:io';

import '../utils/strings_constant.dart';

class AppUser {
  AppUser({
    this.id = kEmptyString,
    this.firstName = kEmptyString,
    this.lastName = kEmptyString,
    this.phoneNumber = kEmptyString,
    this.countryCode = '+1',
    this.avatarUrl = kEmptyString,
    this.email = kEmptyString,
    this.remoteMessageToken = kEmptyString,
    this.accessToken = kEmptyString,
    this.address = kEmptyString,
    this.imageFile,
    this.emailStatus,
  });

  String id;
  String phoneNumber;
  String countryCode;
  String lastName;
  String firstName;
  String avatarUrl;
  String address;
  String accessToken;
  String email;
  String remoteMessageToken;
  File? imageFile;
  String? emailStatus;

  void reset() {
    id = kEmptyString;
    phoneNumber = kEmptyString;
    countryCode = kEmptyString;
    lastName = kEmptyString;
    firstName = kEmptyString;
    avatarUrl = kEmptyString;
    accessToken = kEmptyString;
    address = kEmptyString;
    email = kEmptyString;
    remoteMessageToken = kEmptyString;
    imageFile = null;
  }

  @override
  String toString() {
    return 'AppUser: $id, firstName:$firstName, lastName:$lastName,'
        ' phoneNumber:$phoneNumber, email: $email...';
  }
}
