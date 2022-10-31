class UserInfoEntity {
  UserInfoEntity(
      {this.profileId,
        this.firstName,
        this.lastName,
        this.phoneNumber,
        this.countryCode,
        this.avatarUrl,
        this.refreshToken,
        this.address,
        this.addressPolitical,
        this.accessToken,
        this.hasProfile,
        this.isEmailSent,
        this.isEditingProfile,
        this.isSetupComplete});

  final String? profileId;
  final String? firstName;
  final String? phoneNumber;
  final String? countryCode;
  final String? lastName;
  final String? avatarUrl;
  final String? address;
  final String? addressPolitical;
  final bool? hasProfile;
  final String? accessToken;
  final String? refreshToken;
  final bool? isEmailSent;
  final bool? isEditingProfile;
  final bool? isSetupComplete;

  @override
  String toString() {
    return 'UserInfoEntity{profileId: $profileId, firstName: $firstName, '
        'lastName: $lastName, phone: $phoneNumber, countryCode: $countryCode,'
        ' hasProfile: $hasProfile, accessToken: $accessToken, refreshToken:'
        ' $refreshToken}';
  }
}