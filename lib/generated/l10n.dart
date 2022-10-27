// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Chats`
  String get first_bottom_nav_label {
    return Intl.message(
      'Chats',
      name: 'first_bottom_nav_label',
      desc: '',
      args: [],
    );
  }

  /// `Parents`
  String get second_bottom_nav_label {
    return Intl.message(
      'Parents',
      name: 'second_bottom_nav_label',
      desc: '',
      args: [],
    );
  }

  /// `Proposals`
  String get third_bottom_nav_label {
    return Intl.message(
      'Proposals',
      name: 'third_bottom_nav_label',
      desc: '',
      args: [],
    );
  }

  /// `Places`
  String get place_bottom_nav_label {
    return Intl.message(
      'Places',
      name: 'place_bottom_nav_label',
      desc: '',
      args: [],
    );
  }

  /// `Changed your number?`
  String get changed_your_number {
    return Intl.message(
      'Changed your number?',
      name: 'changed_your_number',
      desc: '',
      args: [],
    );
  }

  /// `Sync your account`
  String get sync_your_account {
    return Intl.message(
      'Sync your account',
      name: 'sync_your_account',
      desc: '',
      args: [],
    );
  }

  /// `{name} would like to connect with you`
  String connect_msg(Object name) {
    return Intl.message(
      '$name would like to connect with you',
      name: 'connect_msg',
      desc: '',
      args: [name],
    );
  }

  /// `Join me on Huddle, the chat app for parents. Download Huddle here at {download_link} and use my personal invitation code, {invitation_code}, to join.`
  String friend_sharing_msg(Object download_link, Object invitation_code) {
    return Intl.message(
      'Join me on Huddle, the chat app for parents. Download Huddle here at $download_link and use my personal invitation code, $invitation_code, to join.',
      name: 'friend_sharing_msg',
      desc: '',
      args: [download_link, invitation_code],
    );
  }

  /// `LOGIN`
  String get login {
    return Intl.message(
      'LOGIN',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// ` from your profile?`
  String get from_your_profile {
    return Intl.message(
      ' from your profile?',
      name: 'from_your_profile',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Resend`
  String get resend {
    return Intl.message(
      'Resend',
      name: 'resend',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_message {
    return Intl.message(
      'Continue',
      name: 'continue_message',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Skip for now`
  String get skip_for_now {
    return Intl.message(
      'Skip for now',
      name: 'skip_for_now',
      desc: '',
      args: [],
    );
  }

  /// `Photos help families recognize each other in real life, where it matters most. You can set {name}'s photo later by editing your profile.`
  String photos_help_family(Object name) {
    return Intl.message(
      'Photos help families recognize each other in real life, where it matters most. You can set $name\'s photo later by editing your profile.',
      name: 'photos_help_family',
      desc: '',
      args: [name],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Share this invite code with other parents`
  String get your_invitation_code_to_invite_other {
    return Intl.message(
      'Share this invite code with other parents',
      name: 'your_invitation_code_to_invite_other',
      desc: '',
      args: [],
    );
  }

  /// `Recovery Email`
  String get recovery_email {
    return Intl.message(
      'Recovery Email',
      name: 'recovery_email',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enter_your_phone_number {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_your_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `New phone #`
  String get new_phone {
    return Intl.message(
      'New phone #',
      name: 'new_phone',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new phone #`
  String get enter_your_new_phone_number {
    return Intl.message(
      'Enter your new phone #',
      name: 'enter_your_new_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email address associated\nwith your account.`
  String get enter_your_email_address {
    return Intl.message(
      'Enter the email address associated\nwith your account.',
      name: 'enter_your_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter your invitation code`
  String get enter_your_invitation_code {
    return Intl.message(
      'Enter your invitation code',
      name: 'enter_your_invitation_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter your verification code`
  String get enter_your_verification_code {
    return Intl.message(
      'Enter your verification code',
      name: 'enter_your_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter the 6-digit code`
  String get enter_the_6_digit_code {
    return Intl.message(
      'Enter the 6-digit code',
      name: 'enter_the_6_digit_code',
      desc: '',
      args: [],
    );
  }

  /// `Delete my account`
  String get delete_my_account {
    return Intl.message(
      'Delete my account',
      name: 'delete_my_account',
      desc: '',
      args: [],
    );
  }

  /// `Type DELETE to confirm`
  String get type_delete_to_confirm {
    return Intl.message(
      'Type DELETE to confirm',
      name: 'type_delete_to_confirm',
      desc: '',
      args: [],
    );
  }

  /// `We are sorry to\nsee you go!`
  String get we_are_sorry_to_see {
    return Intl.message(
      'We are sorry to\nsee you go!',
      name: 'we_are_sorry_to_see',
      desc: '',
      args: [],
    );
  }

  /// `Your account deletion request has been received.`
  String get your_account_deletion_request {
    return Intl.message(
      'Your account deletion request has been received.',
      name: 'your_account_deletion_request',
      desc: '',
      args: [],
    );
  }

  /// `We will email you within 48 hours after your account has been fully deleted. \n\nIf you decide to return to Huddle using the same mobile phone number, you’ll start with a brand new account.`
  String get we_will_email_you {
    return Intl.message(
      'We will email you within 48 hours after your account has been fully deleted. \n\nIf you decide to return to Huddle using the same mobile phone number, you’ll start with a brand new account.',
      name: 'we_will_email_you',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code we just sent to {phone_number}`
  String we_just_send_a_verification_code(Object phone_number) {
    return Intl.message(
      'Enter the code we just sent to $phone_number',
      name: 'we_just_send_a_verification_code',
      desc: '',
      args: [phone_number],
    );
  }

  /// `What's your email address? This will help prevent your account from being lost.`
  String get enter_email_address_to_prevent_lost {
    return Intl.message(
      'What\'s your email address? This will help prevent your account from being lost.',
      name: 'enter_email_address_to_prevent_lost',
      desc: '',
      args: [],
    );
  }

  /// `This will help prevent your account from being lost.`
  String get this_will_help {
    return Intl.message(
      'This will help prevent your account from being lost.',
      name: 'this_will_help',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Baxter!`
  String get welcome_message {
    return Intl.message(
      'Welcome to Baxter!',
      name: 'welcome_message',
      desc: '',
      args: [],
    );
  }

  /// `Now let's set up your profile so you can start talking with other parents`
  String get welcome_message_2 {
    return Intl.message(
      'Now let\'s set up your profile so you can start talking with other parents',
      name: 'welcome_message_2',
      desc: '',
      args: [],
    );
  }

  /// `Your phone number\nhas been changed successfully!`
  String get phone_number_changed_success {
    return Intl.message(
      'Your phone number\nhas been changed successfully!',
      name: 'phone_number_changed_success',
      desc: '',
      args: [],
    );
  }

  /// `Invitation code`
  String get invitation_code {
    return Intl.message(
      'Invitation code',
      name: 'invitation_code',
      desc: '',
      args: [],
    );
  }

  /// `is made for parents, by invitation only`
  String get baxter_is_just_for_parents {
    return Intl.message(
      'is made for parents, by invitation only',
      name: 'baxter_is_just_for_parents',
      desc: '',
      args: [],
    );
  }

  /// `Invalid phone number. Try again?`
  String get error_phone_not_valid {
    return Intl.message(
      'Invalid phone number. Try again?',
      name: 'error_phone_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get error_required_field {
    return Intl.message(
      'Required',
      name: 'error_required_field',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't find that code. Try again?`
  String get error_incorrect_invitation_code {
    return Intl.message(
      'We couldn\'t find that code. Try again?',
      name: 'error_incorrect_invitation_code',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect code`
  String get error_incorrect_code {
    return Intl.message(
      'Incorrect code',
      name: 'error_incorrect_code',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email address\nTry again?`
  String get error_incorrect_email_address {
    return Intl.message(
      'Invalid email address\nTry again?',
      name: 'error_incorrect_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email address`
  String get enter_your_email {
    return Intl.message(
      'Enter your email address',
      name: 'enter_your_email',
      desc: '',
      args: [],
    );
  }

  /// `This email address is associated\nwith another account\nTry again?`
  String get error_existing_email_address {
    return Intl.message(
      'This email address is associated\nwith another account\nTry again?',
      name: 'error_existing_email_address',
      desc: '',
      args: [],
    );
  }

  /// `This number is already taken. Try again?`
  String get error_existing_phone_number {
    return Intl.message(
      'This number is already taken. Try again?',
      name: 'error_existing_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `This number is already\nassociated with another account. Try again?`
  String get error_existing_phone_number_dialog {
    return Intl.message(
      'This number is already\nassociated with another account. Try again?',
      name: 'error_existing_phone_number_dialog',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't find that email. Try again?`
  String get error_non_existing_email_address {
    return Intl.message(
      'We couldn\'t find that email. Try again?',
      name: 'error_non_existing_email_address',
      desc: '',
      args: [],
    );
  }

  /// `invalid name`
  String get error_invalid_name {
    return Intl.message(
      'invalid name',
      name: 'error_invalid_name',
      desc: '',
      args: [],
    );
  }

  /// `Oops, something went wrong. Try again?`
  String get error_some_thing_went_wrong {
    return Intl.message(
      'Oops, something went wrong. Try again?',
      name: 'error_some_thing_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Privacy`
  String get privacy_control {
    return Intl.message(
      'Privacy',
      name: 'privacy_control',
      desc: '',
      args: [],
    );
  }

  /// `Your Invitation Codes`
  String get your_invitation_code {
    return Intl.message(
      'Your Invitation Codes',
      name: 'your_invitation_code',
      desc: '',
      args: [],
    );
  }

  /// `Notification Settings`
  String get notification_setting {
    return Intl.message(
      'Notification Settings',
      name: 'notification_setting',
      desc: '',
      args: [],
    );
  }

  /// `Set up profile`
  String get setup_profile {
    return Intl.message(
      'Set up profile',
      name: 'setup_profile',
      desc: '',
      args: [],
    );
  }

  /// `Profile set up`
  String get profile_setup {
    return Intl.message(
      'Profile set up',
      name: 'profile_setup',
      desc: '',
      args: [],
    );
  }

  /// `Parent profiles help ensure everyone knows who they're in a Huddle with`
  String get profile_setup_family_policy {
    return Intl.message(
      'Parent profiles help ensure everyone knows who they\'re in a Huddle with',
      name: 'profile_setup_family_policy',
      desc: '',
      args: [],
    );
  }

  /// `Neighborhood or City`
  String get neighborhood_or_city_hint {
    return Intl.message(
      'Neighborhood or City',
      name: 'neighborhood_or_city_hint',
      desc: '',
      args: [],
    );
  }

  /// `born on`
  String get born_on {
    return Intl.message(
      'born on',
      name: 'born_on',
      desc: '',
      args: [],
    );
  }

  /// `Month year`
  String get mm_dd_yyyy_hint {
    return Intl.message(
      'Month year',
      name: 'mm_dd_yyyy_hint',
      desc: '',
      args: [],
    );
  }

  /// `My child attends school at`
  String get child_attend_school_at {
    return Intl.message(
      'My child attends school at',
      name: 'child_attend_school_at',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get child_attend_school_at_location_hint {
    return Intl.message(
      'Location',
      name: 'child_attend_school_at_location_hint',
      desc: '',
      args: [],
    );
  }

  /// `named`
  String get i_have_a_child_named {
    return Intl.message(
      'named',
      name: 'i_have_a_child_named',
      desc: '',
      args: [],
    );
  }

  /// `Save & continue`
  String get save_and_continue_button {
    return Intl.message(
      'Save & continue',
      name: 'save_and_continue_button',
      desc: '',
      args: [],
    );
  }

  /// `Confirm date`
  String get confirm_date_button {
    return Intl.message(
      'Confirm date',
      name: 'confirm_date_button',
      desc: '',
      args: [],
    );
  }

  /// `Huddles`
  String get huddle_button {
    return Intl.message(
      'Huddles',
      name: 'huddle_button',
      desc: '',
      args: [],
    );
  }

  /// `Contacts`
  String get contacts_button {
    return Intl.message(
      'Contacts',
      name: 'contacts_button',
      desc: '',
      args: [],
    );
  }

  /// `What's your name?`
  String get what_s_your_name {
    return Intl.message(
      'What\'s your name?',
      name: 'what_s_your_name',
      desc: '',
      args: [],
    );
  }

  /// `What's your email?`
  String get what_s_your_email {
    return Intl.message(
      'What\'s your email?',
      name: 'what_s_your_email',
      desc: '',
      args: [],
    );
  }

  /// `Huddle helps parents get to know other parents. Your name is a great way to start!`
  String get profile_name_policy {
    return Intl.message(
      'Huddle helps parents get to know other parents. Your name is a great way to start!',
      name: 'profile_name_policy',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get first_name {
    return Intl.message(
      'First name',
      name: 'first_name',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get last_name {
    return Intl.message(
      'Last name',
      name: 'last_name',
      desc: '',
      args: [],
    );
  }

  /// `My name is`
  String get my_name_is {
    return Intl.message(
      'My name is',
      name: 'my_name_is',
      desc: '',
      args: [],
    );
  }

  /// `What's your address?`
  String get where_do_you_live {
    return Intl.message(
      'What\'s your address?',
      name: 'where_do_you_live',
      desc: '',
      args: [],
    );
  }

  /// `Your address helps us locate your neighborhood, which is part of your profile and is helpful for coordinating activities with other parents.`
  String get profile_address_policy {
    return Intl.message(
      'Your address helps us locate your neighborhood, which is part of your profile and is helpful for coordinating activities with other parents.',
      name: 'profile_address_policy',
      desc: '',
      args: [],
    );
  }

  /// `Neighborhood/ City`
  String get street_address {
    return Intl.message(
      'Neighborhood/ City',
      name: 'street_address',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_button {
    return Intl.message(
      'Continue',
      name: 'continue_button',
      desc: '',
      args: [],
    );
  }

  /// `Go to chat`
  String get go_to_chat {
    return Intl.message(
      'Go to chat',
      name: 'go_to_chat',
      desc: '',
      args: [],
    );
  }

  /// `Start a chat`
  String get start_a_chat {
    return Intl.message(
      'Start a chat',
      name: 'start_a_chat',
      desc: '',
      args: [],
    );
  }

  /// `Enter your address/street/neighborhood/city/state`
  String get hint_search_street_address {
    return Intl.message(
      'Enter your address/street/neighborhood/city/state',
      name: 'hint_search_street_address',
      desc: '',
      args: [],
    );
  }

  /// `Let's set your profile photo`
  String get let_s_set_your_profile_photo {
    return Intl.message(
      'Let\'s set your profile photo',
      name: 'let_s_set_your_profile_photo',
      desc: '',
      args: [],
    );
  }

  /// `Let's go`
  String get let_s_go {
    return Intl.message(
      'Let\'s go',
      name: 'let_s_go',
      desc: '',
      args: [],
    );
  }

  /// `Profile photos help parents recognize each other and contribute to a strong, trusted community.`
  String get profile_picture_policy {
    return Intl.message(
      'Profile photos help parents recognize each other and contribute to a strong, trusted community.',
      name: 'profile_picture_policy',
      desc: '',
      args: [],
    );
  }

  /// `What are your kids' names and birthdate?`
  String get what_s_your_kid_s_info {
    return Intl.message(
      'What are your kids\' names and birthdate?',
      name: 'what_s_your_kid_s_info',
      desc: '',
      args: [],
    );
  }

  /// `Baxter helps parents get to know each other's families.`
  String get child_profile_policy {
    return Intl.message(
      'Baxter helps parents get to know each other\'s families.',
      name: 'child_profile_policy',
      desc: '',
      args: [],
    );
  }

  /// `Choose a photo`
  String get choose_a_photo {
    return Intl.message(
      'Choose a photo',
      name: 'choose_a_photo',
      desc: '',
      args: [],
    );
  }

  /// `Take a photo`
  String get take_a_photo {
    return Intl.message(
      'Take a photo',
      name: 'take_a_photo',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Photo & Video Library`
  String get select_from_gallery {
    return Intl.message(
      'Photo & Video Library',
      name: 'select_from_gallery',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_address {
    return Intl.message(
      'Home',
      name: 'home_address',
      desc: '',
      args: [],
    );
  }

  /// `Crop Image`
  String get crop_image {
    return Intl.message(
      'Crop Image',
      name: 'crop_image',
      desc: '',
      args: [],
    );
  }

  /// `Deny`
  String get deny {
    return Intl.message(
      'Deny',
      name: 'deny',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Male`
  String get male {
    return Intl.message(
      'Male',
      name: 'male',
      desc: '',
      args: [],
    );
  }

  /// `Female`
  String get female {
    return Intl.message(
      'Female',
      name: 'female',
      desc: '',
      args: [],
    );
  }

  /// `Nonbinary`
  String get nonbinary {
    return Intl.message(
      'Nonbinary',
      name: 'nonbinary',
      desc: '',
      args: [],
    );
  }

  /// `daughter`
  String get daughter {
    return Intl.message(
      'daughter',
      name: 'daughter',
      desc: '',
      args: [],
    );
  }

  /// `son`
  String get son {
    return Intl.message(
      'son',
      name: 'son',
      desc: '',
      args: [],
    );
  }

  /// `step daughter`
  String get stepdaughter {
    return Intl.message(
      'step daughter',
      name: 'stepdaughter',
      desc: '',
      args: [],
    );
  }

  /// `step son`
  String get stepson {
    return Intl.message(
      'step son',
      name: 'stepson',
      desc: '',
      args: [],
    );
  }

  /// `ward`
  String get ward {
    return Intl.message(
      'ward',
      name: 'ward',
      desc: '',
      args: [],
    );
  }

  /// `Mom`
  String get mom {
    return Intl.message(
      'Mom',
      name: 'mom',
      desc: '',
      args: [],
    );
  }

  /// `Dad`
  String get dad {
    return Intl.message(
      'Dad',
      name: 'dad',
      desc: '',
      args: [],
    );
  }

  /// `Guardian`
  String get guardian {
    return Intl.message(
      'Guardian',
      name: 'guardian',
      desc: '',
      args: [],
    );
  }

  /// `Stepdad`
  String get stepdad {
    return Intl.message(
      'Stepdad',
      name: 'stepdad',
      desc: '',
      args: [],
    );
  }

  /// `Stepmom`
  String get stepmom {
    return Intl.message(
      'Stepmom',
      name: 'stepmom',
      desc: '',
      args: [],
    );
  }

  /// `Child's birthday`
  String get child_s_birthday {
    return Intl.message(
      'Child\'s birthday',
      name: 'child_s_birthday',
      desc: '',
      args: [],
    );
  }

  /// `MM`
  String get month {
    return Intl.message(
      'MM',
      name: 'month',
      desc: '',
      args: [],
    );
  }

  /// `DD`
  String get date {
    return Intl.message(
      'DD',
      name: 'date',
      desc: '',
      args: [],
    );
  }

  /// `YYYY`
  String get year {
    return Intl.message(
      'YYYY',
      name: 'year',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `Your relationship to `
  String get your_relationship_to {
    return Intl.message(
      'Your relationship to ',
      name: 'your_relationship_to',
      desc: '',
      args: [],
    );
  }

  /// `Where does the child currently or last attend school/ daycare?`
  String get where_does_the_child_currently_or_last_attend_school {
    return Intl.message(
      'Where does the child currently or last attend school/ daycare?',
      name: 'where_does_the_child_currently_or_last_attend_school',
      desc: '',
      args: [],
    );
  }

  /// `Required at least one`
  String get required_at_least_one {
    return Intl.message(
      'Required at least one',
      name: 'required_at_least_one',
      desc: '',
      args: [],
    );
  }

  /// `Attending`
  String get attending {
    return Intl.message(
      'Attending',
      name: 'attending',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Tell us more (optional)`
  String get tell_us_more {
    return Intl.message(
      'Tell us more (optional)',
      name: 'tell_us_more',
      desc: '',
      args: [],
    );
  }

  /// `Are there any other places (eg daycare, clubs, camps, classes, etc) that your child has attended?`
  String get are_there_any_other_place_that_your_child_attended {
    return Intl.message(
      'Are there any other places (eg daycare, clubs, camps, classes, etc) that your child has attended?',
      name: 'are_there_any_other_place_that_your_child_attended',
      desc: '',
      args: [],
    );
  }

  /// `Optional`
  String get optional {
    return Intl.message(
      'Optional',
      name: 'optional',
      desc: '',
      args: [],
    );
  }

  /// `What are some of your child interests?`
  String get what_are_some_of_your_child_interests {
    return Intl.message(
      'What are some of your child interests?',
      name: 'what_are_some_of_your_child_interests',
      desc: '',
      args: [],
    );
  }

  /// `I have another child`
  String get i_have_another_child {
    return Intl.message(
      'I have another child',
      name: 'i_have_another_child',
      desc: '',
      args: [],
    );
  }

  /// `Invite to Baxter`
  String get invite_to_baxter {
    return Intl.message(
      'Invite to Baxter',
      name: 'invite_to_baxter',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get log_out {
    return Intl.message(
      'Log Out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to log out?`
  String get logout_confirmation_question {
    return Intl.message(
      'Do you want to log out?',
      name: 'logout_confirmation_question',
      desc: '',
      args: [],
    );
  }

  /// `Enter your mobile number`
  String get enter_your_phone {
    return Intl.message(
      'Enter your mobile number',
      name: 'enter_your_phone',
      desc: '',
      args: [],
    );
  }

  /// `Find Places`
  String get find_places_title {
    return Intl.message(
      'Find Places',
      name: 'find_places_title',
      desc: '',
      args: [],
    );
  }

  /// `Enter the place's name`
  String get enter_the_place_name {
    return Intl.message(
      'Enter the place\'s name',
      name: 'enter_the_place_name',
      desc: '',
      args: [],
    );
  }

  /// `It's all about family`
  String get it_s_all_about_family {
    return Intl.message(
      'It\'s all about family',
      name: 'it_s_all_about_family',
      desc: '',
      args: [],
    );
  }

  /// `I have a child named...`
  String get i_have_a_kid_named {
    return Intl.message(
      'I have a child named...',
      name: 'i_have_a_kid_named',
      desc: '',
      args: [],
    );
  }

  /// `I have a`
  String get i_have_a {
    return Intl.message(
      'I have a',
      name: 'i_have_a',
      desc: '',
      args: [],
    );
  }

  /// `child`
  String get child {
    return Intl.message(
      'child',
      name: 'child',
      desc: '',
      args: [],
    );
  }

  /// `I am `
  String get i_am {
    return Intl.message(
      'I am ',
      name: 'i_am',
      desc: '',
      args: [],
    );
  }

  /// ` was born on...`
  String get sb_was_born_on {
    return Intl.message(
      ' was born on...',
      name: 'sb_was_born_on',
      desc: '',
      args: [],
    );
  }

  /// ` likes...`
  String get sb_likes {
    return Intl.message(
      ' likes...',
      name: 'sb_likes',
      desc: '',
      args: [],
    );
  }

  /// `My family`
  String get my_family {
    return Intl.message(
      'My family',
      name: 'my_family',
      desc: '',
      args: [],
    );
  }

  /// `eg: soccer, music, reading books, etc`
  String get hint_interest {
    return Intl.message(
      'eg: soccer, music, reading books, etc',
      name: 'hint_interest',
      desc: '',
      args: [],
    );
  }

  /// `Here's a great photo of `
  String get here_s_a_great_photo_of {
    return Intl.message(
      'Here\'s a great photo of ',
      name: 'here_s_a_great_photo_of',
      desc: '',
      args: [],
    );
  }

  /// `Add a photo`
  String get add_a_photo {
    return Intl.message(
      'Add a photo',
      name: 'add_a_photo',
      desc: '',
      args: [],
    );
  }

  /// `Change photo`
  String get change_photo {
    return Intl.message(
      'Change photo',
      name: 'change_photo',
      desc: '',
      args: [],
    );
  }

  /// `The schools, daycares, clubs, classes, etc. that `
  String get the_school_that_sb {
    return Intl.message(
      'The schools, daycares, clubs, classes, etc. that ',
      name: 'the_school_that_sb',
      desc: '',
      args: [],
    );
  }

  /// ` attends or has attended in the past:`
  String get sb_attends {
    return Intl.message(
      ' attends or has attended in the past:',
      name: 'sb_attends',
      desc: '',
      args: [],
    );
  }

  /// `+ Another child`
  String get add_another_child {
    return Intl.message(
      '+ Another child',
      name: 'add_another_child',
      desc: '',
      args: [],
    );
  }

  /// `Add another child`
  String get add_another_child_header {
    return Intl.message(
      'Add another child',
      name: 'add_another_child_header',
      desc: '',
      args: [],
    );
  }

  /// `Add another school/place`
  String get add_another_place {
    return Intl.message(
      'Add another school/place',
      name: 'add_another_place',
      desc: '',
      args: [],
    );
  }

  /// `Creating a complete picture of your family is a great way to use Huddle.`
  String get creating_a_complete_picture {
    return Intl.message(
      'Creating a complete picture of your family is a great way to use Huddle.',
      name: 'creating_a_complete_picture',
      desc: '',
      args: [],
    );
  }

  /// `Add another place`
  String get add_another_places {
    return Intl.message(
      'Add another place',
      name: 'add_another_places',
      desc: '',
      args: [],
    );
  }

  /// `The place I'm looking\nfor is not found`
  String get the_place_not_found {
    return Intl.message(
      'The place I\'m looking\nfor is not found',
      name: 'the_place_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Tap here to search`
  String get tap_here_to_search {
    return Intl.message(
      'Tap here to search',
      name: 'tap_here_to_search',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `What's the name of the place you want to add?`
  String get name_of_place_want_to_add {
    return Intl.message(
      'What\'s the name of the place you want to add?',
      name: 'name_of_place_want_to_add',
      desc: '',
      args: [],
    );
  }

  /// `e.g. home school`
  String get eg_home_school {
    return Intl.message(
      'e.g. home school',
      name: 'eg_home_school',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Verify your phone`
  String get phone_verification {
    return Intl.message(
      'Verify your phone',
      name: 'phone_verification',
      desc: '',
      args: [],
    );
  }

  /// `Email Verification`
  String get email_verification {
    return Intl.message(
      'Email Verification',
      name: 'email_verification',
      desc: '',
      args: [],
    );
  }

  /// `We couldn't find that code. Try again?`
  String get error_code_not_valid {
    return Intl.message(
      'We couldn\'t find that code. Try again?',
      name: 'error_code_not_valid',
      desc: '',
      args: [],
    );
  }

  /// `You know `
  String get you_know {
    return Intl.message(
      'You know ',
      name: 'you_know',
      desc: '',
      args: [],
    );
  }

  /// `That's great!`
  String get that_great {
    return Intl.message(
      'That\'s great!',
      name: 'that_great',
      desc: '',
      args: [],
    );
  }

  /// `Check your email at {email} for your verification code.`
  String check_your_email(Object email) {
    return Intl.message(
      'Check your email at $email for your verification code.',
      name: 'check_your_email',
      desc: '',
      args: [email],
    );
  }

  /// `Invitation Code`
  String get invitation_code_title {
    return Intl.message(
      'Invitation Code',
      name: 'invitation_code_title',
      desc: '',
      args: [],
    );
  }

  /// `Hooray! Your profile is all set up.\n You can start connecting with other parents on Baxter`
  String get hoo_ray {
    return Intl.message(
      'Hooray! Your profile is all set up.\n You can start connecting with other parents on Baxter',
      name: 'hoo_ray',
      desc: '',
      args: [],
    );
  }

  /// `Search by name`
  String get search_hint {
    return Intl.message(
      'Search by name',
      name: 'search_hint',
      desc: '',
      args: [],
    );
  }

  /// `Requests`
  String get tab_request_label {
    return Intl.message(
      'Requests',
      name: 'tab_request_label',
      desc: '',
      args: [],
    );
  }

  /// `What is your new phone number?`
  String get what_is_your_new_phone_number {
    return Intl.message(
      'What is your new phone number?',
      name: 'what_is_your_new_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Oops! This is not my email.`
  String get oop_mail_email_is_not {
    return Intl.message(
      'Oops! This is not my email.',
      name: 'oop_mail_email_is_not',
      desc: '',
      args: [],
    );
  }

  /// `Enter a new email address`
  String get enter_a_new_email_address {
    return Intl.message(
      'Enter a new email address',
      name: 'enter_a_new_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Oops! That is not my number.`
  String get oops_is_not_my_number {
    return Intl.message(
      'Oops! That is not my number.',
      name: 'oops_is_not_my_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter my correct phone number`
  String get enter_my_correct_phone_number {
    return Intl.message(
      'Enter my correct phone number',
      name: 'enter_my_correct_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `What's the correct phone number for you?`
  String get what_s_correct_phone_number_for_you {
    return Intl.message(
      'What\'s the correct phone number for you?',
      name: 'what_s_correct_phone_number_for_you',
      desc: '',
      args: [],
    );
  }

  /// `Parent you might know`
  String get parent_you_might_know {
    return Intl.message(
      'Parent you might know',
      name: 'parent_you_might_know',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `What is the best describes of your relationship with `
  String get what_is_the_best_describe {
    return Intl.message(
      'What is the best describes of your relationship with ',
      name: 'what_is_the_best_describe',
      desc: '',
      args: [],
    );
  }

  /// `We found another parent on Baxter who you might know, based on your kids’ names, birthdates, and school.`
  String get we_found_another_parent {
    return Intl.message(
      'We found another parent on Baxter who you might know, based on your kids’ names, birthdates, and school.',
      name: 'we_found_another_parent',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Connect`
  String get connect {
    return Intl.message(
      'Connect',
      name: 'connect',
      desc: '',
      args: [],
    );
  }

  /// `Dismiss`
  String get dismiss {
    return Intl.message(
      'Dismiss',
      name: 'dismiss',
      desc: '',
      args: [],
    );
  }

  /// `Friends`
  String get tab_friend_label {
    return Intl.message(
      'Friends',
      name: 'tab_friend_label',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `Decline`
  String get decline {
    return Intl.message(
      'Decline',
      name: 'decline',
      desc: '',
      args: [],
    );
  }

  /// `View request`
  String get view_request {
    return Intl.message(
      'View request',
      name: 'view_request',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation`
  String get confirmation {
    return Intl.message(
      'Confirmation',
      name: 'confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Family`
  String get family {
    return Intl.message(
      'Family',
      name: 'family',
      desc: '',
      args: [],
    );
  }

  /// `Places`
  String get places {
    return Intl.message(
      'Places',
      name: 'places',
      desc: '',
      args: [],
    );
  }

  /// `Friends`
  String get friend {
    return Intl.message(
      'Friends',
      name: 'friend',
      desc: '',
      args: [],
    );
  }

  /// `Okay`
  String get okay {
    return Intl.message(
      'Okay',
      name: 'okay',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Child Profile`
  String get child_profile {
    return Intl.message(
      'Child Profile',
      name: 'child_profile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Child Profile`
  String get edit_child_profile {
    return Intl.message(
      'Edit Child Profile',
      name: 'edit_child_profile',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message(
      'Chat',
      name: 'chat',
      desc: '',
      args: [],
    );
  }

  /// `Request Pending`
  String get request_pending {
    return Intl.message(
      'Request Pending',
      name: 'request_pending',
      desc: '',
      args: [],
    );
  }

  /// `Cancel pending request?`
  String get cancel_pending_request {
    return Intl.message(
      'Cancel pending request?',
      name: 'cancel_pending_request',
      desc: '',
      args: [],
    );
  }

  /// `Search by name`
  String get search_by_name {
    return Intl.message(
      'Search by name',
      name: 'search_by_name',
      desc: '',
      args: [],
    );
  }

  /// `Load more results`
  String get load_more_results {
    return Intl.message(
      'Load more results',
      name: 'load_more_results',
      desc: '',
      args: [],
    );
  }

  /// `Can't find who you're looking for?`
  String get cannot_find_profile {
    return Intl.message(
      'Can\'t find who you\'re looking for?',
      name: 'cannot_find_profile',
      desc: '',
      args: [],
    );
  }

  /// `Invite them to Baxter!`
  String get invite_them_to_baxter {
    return Intl.message(
      'Invite them to Baxter!',
      name: 'invite_them_to_baxter',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Remove Connection`
  String get remove_connection {
    return Intl.message(
      'Remove Connection',
      name: 'remove_connection',
      desc: '',
      args: [],
    );
  }

  /// `Accept Request?`
  String get accept_request {
    return Intl.message(
      'Accept Request?',
      name: 'accept_request',
      desc: '',
      args: [],
    );
  }

  /// `Copy Invitation Code`
  String get copy_invitation_code {
    return Intl.message(
      'Copy Invitation Code',
      name: 'copy_invitation_code',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get copied_to_clip_board {
    return Intl.message(
      'Copied to clipboard',
      name: 'copied_to_clip_board',
      desc: '',
      args: [],
    );
  }

  /// `Share Invitation Code`
  String get share_invitation_code {
    return Intl.message(
      'Share Invitation Code',
      name: 'share_invitation_code',
      desc: '',
      args: [],
    );
  }

  /// `someone`
  String get someone {
    return Intl.message(
      'someone',
      name: 'someone',
      desc: '',
      args: [],
    );
  }

  /// ` added you into `
  String get added_you_into {
    return Intl.message(
      ' added you into ',
      name: 'added_you_into',
      desc: '',
      args: [],
    );
  }

  /// `a group`
  String get a_group {
    return Intl.message(
      'a group',
      name: 'a_group',
      desc: '',
      args: [],
    );
  }

  /// ` sent a photo`
  String get sent_a_photo {
    return Intl.message(
      ' sent a photo',
      name: 'sent_a_photo',
      desc: '',
      args: [],
    );
  }

  /// ` sent a video`
  String get sent_a_video {
    return Intl.message(
      ' sent a video',
      name: 'sent_a_video',
      desc: '',
      args: [],
    );
  }

  /// ` participants`
  String get participants {
    return Intl.message(
      ' participants',
      name: 'participants',
      desc: '',
      args: [],
    );
  }

  /// `Shared Content`
  String get shared_content {
    return Intl.message(
      'Shared Content',
      name: 'shared_content',
      desc: '',
      args: [],
    );
  }

  /// `Create group chat`
  String get create_group_chat {
    return Intl.message(
      'Create group chat',
      name: 'create_group_chat',
      desc: '',
      args: [],
    );
  }

  /// `New messages`
  String get new_message {
    return Intl.message(
      'New messages',
      name: 'new_message',
      desc: '',
      args: [],
    );
  }

  /// `See group members ({count})`
  String view_participants(Object count) {
    return Intl.message(
      'See group members ($count)',
      name: 'view_participants',
      desc: '',
      args: [count],
    );
  }

  /// `Edit group name`
  String get edit_group_name {
    return Intl.message(
      'Edit group name',
      name: 'edit_group_name',
      desc: '',
      args: [],
    );
  }

  /// `Select a photo`
  String get select_a_photo {
    return Intl.message(
      'Select a photo',
      name: 'select_a_photo',
      desc: '',
      args: [],
    );
  }

  /// `View media, file & link`
  String get view_shared_content {
    return Intl.message(
      'View media, file & link',
      name: 'view_shared_content',
      desc: '',
      args: [],
    );
  }

  /// `New group`
  String get new_group {
    return Intl.message(
      'New group',
      name: 'new_group',
      desc: '',
      args: [],
    );
  }

  /// `Enter the group's name`
  String get enter_the_group_name {
    return Intl.message(
      'Enter the group\'s name',
      name: 'enter_the_group_name',
      desc: '',
      args: [],
    );
  }

  /// `Add participants`
  String get add_participants {
    return Intl.message(
      'Add participants',
      name: 'add_participants',
      desc: '',
      args: [],
    );
  }

  /// `Leave group`
  String get leave_group {
    return Intl.message(
      'Leave group',
      name: 'leave_group',
      desc: '',
      args: [],
    );
  }

  /// `Participants`
  String get participants_app_bar {
    return Intl.message(
      'Participants',
      name: 'participants_app_bar',
      desc: '',
      args: [],
    );
  }

  /// `Group Settings`
  String get group_settings {
    return Intl.message(
      'Group Settings',
      name: 'group_settings',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to leave?`
  String get leave_group_confirmation {
    return Intl.message(
      'Are you sure you want to leave?',
      name: 'leave_group_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to remove this connection?`
  String get remove_connection_confirmation {
    return Intl.message(
      'Are you sure you want to remove this connection?',
      name: 'remove_connection_confirmation',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages {
    return Intl.message(
      'Messages',
      name: 'messages',
      desc: '',
      args: [],
    );
  }

  /// `No matching results found!`
  String get no_matching_results {
    return Intl.message(
      'No matching results found!',
      name: 'no_matching_results',
      desc: '',
      args: [],
    );
  }

  /// `View Profile`
  String get view_profile {
    return Intl.message(
      'View Profile',
      name: 'view_profile',
      desc: '',
      args: [],
    );
  }

  /// `home`
  String get home {
    return Intl.message(
      'home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `outside of home`
  String get outside_of_home {
    return Intl.message(
      'outside of home',
      name: 'outside_of_home',
      desc: '',
      args: [],
    );
  }

  /// `Server error`
  String get server_error {
    return Intl.message(
      'Server error',
      name: 'server_error',
      desc: '',
      args: [],
    );
  }

  /// `Oops! Something went wrong.`
  String get something_went_wrong {
    return Intl.message(
      'Oops! Something went wrong.',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Check your internet connection.`
  String get check_your_internet_connection {
    return Intl.message(
      'Check your internet connection.',
      name: 'check_your_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `We're trying to fix it! Check back again in a few minutes.`
  String get trying_to_fix {
    return Intl.message(
      'We\'re trying to fix it! Check back again in a few minutes.',
      name: 'trying_to_fix',
      desc: '',
      args: [],
    );
  }

  /// `Hi, {name}!`
  String hi_msg(Object name) {
    return Intl.message(
      'Hi, $name!',
      name: 'hi_msg',
      desc: '',
      args: [name],
    );
  }

  /// `Welcome to Huddle,\nthe chat app for parents`
  String get welcome_msg {
    return Intl.message(
      'Welcome to Huddle,\nthe chat app for parents',
      name: 'welcome_msg',
      desc: '',
      args: [],
    );
  }

  /// `Email Sent!`
  String get email_sent {
    return Intl.message(
      'Email Sent!',
      name: 'email_sent',
      desc: '',
      args: [],
    );
  }

  /// `Didn't get an email?`
  String get did_not_get_email {
    return Intl.message(
      'Didn\'t get an email?',
      name: 'did_not_get_email',
      desc: '',
      args: [],
    );
  }

  /// `Resend verification`
  String get resend_verification {
    return Intl.message(
      'Resend verification',
      name: 'resend_verification',
      desc: '',
      args: [],
    );
  }

  /// `Click the verification link in the email you received within the next 24 hours to verify your email address.`
  String get click_verification_link {
    return Intl.message(
      'Click the verification link in the email you received within the next 24 hours to verify your email address.',
      name: 'click_verification_link',
      desc: '',
      args: [],
    );
  }

  /// `All information about your family is private and only visible to the parents you're in a Huddle with.`
  String get profile_setup_family_private_policy {
    return Intl.message(
      'All information about your family is private and only visible to the parents you\'re in a Huddle with.',
      name: 'profile_setup_family_private_policy',
      desc: '',
      args: [],
    );
  }

  /// `Name of school`
  String get hint_search_school_location_address {
    return Intl.message(
      'Name of school',
      name: 'hint_search_school_location_address',
      desc: '',
      args: [],
    );
  }

  /// `Search results ({count}):`
  String search_result(Object count) {
    return Intl.message(
      'Search results ($count):',
      name: 'search_result',
      desc: '',
      args: [count],
    );
  }

  /// `Email associated with another account. Try again?`
  String get email_already_exist {
    return Intl.message(
      'Email associated with another account. Try again?',
      name: 'email_already_exist',
      desc: '',
      args: [],
    );
  }

  /// `OTP was expired`
  String get otp_expired {
    return Intl.message(
      'OTP was expired',
      name: 'otp_expired',
      desc: '',
      args: [],
    );
  }

  /// `Select this location`
  String get select_this_location {
    return Intl.message(
      'Select this location',
      name: 'select_this_location',
      desc: '',
      args: [],
    );
  }

  /// `at`
  String get at {
    return Intl.message(
      'at',
      name: 'at',
      desc: '',
      args: [],
    );
  }

  /// `No data returned`
  String get no_data_returned_message {
    return Intl.message(
      'No data returned',
      name: 'no_data_returned_message',
      desc: '',
      args: [],
    );
  }

  /// `No more results`
  String get no_more_results_message {
    return Intl.message(
      'No more results',
      name: 'no_more_results_message',
      desc: '',
      args: [],
    );
  }

  /// `Success`
  String get success {
    return Intl.message(
      'Success',
      name: 'success',
      desc: '',
      args: [],
    );
  }

  /// `Your profile is now complete. You can edit your profile at any time.`
  String get edit_profile_success {
    return Intl.message(
      'Your profile is now complete. You can edit your profile at any time.',
      name: 'edit_profile_success',
      desc: '',
      args: [],
    );
  }

  /// `Go to my chats`
  String get go_to_my_chat {
    return Intl.message(
      'Go to my chats',
      name: 'go_to_my_chat',
      desc: '',
      args: [],
    );
  }

  /// `Invite your spouse?`
  String get invite_your_spouse {
    return Intl.message(
      'Invite your spouse?',
      name: 'invite_your_spouse',
      desc: '',
      args: [],
    );
  }

  /// `Send my spouse a code`
  String get send_my_spouse_a_code {
    return Intl.message(
      'Send my spouse a code',
      name: 'send_my_spouse_a_code',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message(
      'Loading...',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Email verified`
  String get email_verified {
    return Intl.message(
      'Email verified',
      name: 'email_verified',
      desc: '',
      args: [],
    );
  }

  /// `Email not verified`
  String get email_not_verified {
    return Intl.message(
      'Email not verified',
      name: 'email_not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Verifying your email helps prevent your account from being lost.`
  String get verifying_email_to_prevent_account_lost {
    return Intl.message(
      'Verifying your email helps prevent your account from being lost.',
      name: 'verifying_email_to_prevent_account_lost',
      desc: '',
      args: [],
    );
  }

  /// `Your email has been verified`
  String get your_email_has_been_verified {
    return Intl.message(
      'Your email has been verified',
      name: 'your_email_has_been_verified',
      desc: '',
      args: [],
    );
  }

  /// `Your email is not verified`
  String get your_email_is_not_verified {
    return Intl.message(
      'Your email is not verified',
      name: 'your_email_is_not_verified',
      desc: '',
      args: [],
    );
  }

  /// `Please click the verification link sent to `
  String get please_verifying_email {
    return Intl.message(
      'Please click the verification link sent to ',
      name: 'please_verifying_email',
      desc: '',
      args: [],
    );
  }

  /// ` (valid for 24 hrs)`
  String get valid_for_24_hours {
    return Intl.message(
      ' (valid for 24 hrs)',
      name: 'valid_for_24_hours',
      desc: '',
      args: [],
    );
  }

  /// `Can't find it? `
  String get can_t_find_it {
    return Intl.message(
      'Can\'t find it? ',
      name: 'can_t_find_it',
      desc: '',
      args: [],
    );
  }

  /// `Check your email spam folder or resend it now.`
  String get check_email_spam_folder {
    return Intl.message(
      'Check your email spam folder or resend it now.',
      name: 'check_email_spam_folder',
      desc: '',
      args: [],
    );
  }

  /// `Send verification`
  String get send_verification {
    return Intl.message(
      'Send verification',
      name: 'send_verification',
      desc: '',
      args: [],
    );
  }

  /// `Change my verification email address`
  String get change_my_verification_email {
    return Intl.message(
      'Change my verification email address',
      name: 'change_my_verification_email',
      desc: '',
      args: [],
    );
  }

  /// `Update your email address`
  String get update_your_email {
    return Intl.message(
      'Update your email address',
      name: 'update_your_email',
      desc: '',
      args: [],
    );
  }

  /// `New email address`
  String get new_email_address {
    return Intl.message(
      'New email address',
      name: 'new_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Invite other parents`
  String get invite_other_parents {
    return Intl.message(
      'Invite other parents',
      name: 'invite_other_parents',
      desc: '',
      args: [],
    );
  }

  /// `Invite your spouse/co-parent(s)`
  String get invite_your_spouse_co_parent {
    return Intl.message(
      'Invite your spouse/co-parent(s)',
      name: 'invite_your_spouse_co_parent',
      desc: '',
      args: [],
    );
  }

  /// `Share this invite code with your spouse/co-parent(s)`
  String get share_this_invite_code_with_your_spouse_co_parent {
    return Intl.message(
      'Share this invite code with your spouse/co-parent(s)',
      name: 'share_this_invite_code_with_your_spouse_co_parent',
      desc: '',
      args: [],
    );
  }

  /// `Copy link`
  String get copy_link {
    return Intl.message(
      'Copy link',
      name: 'copy_link',
      desc: '',
      args: [],
    );
  }

  /// `Send invite`
  String get send_invite {
    return Intl.message(
      'Send invite',
      name: 'send_invite',
      desc: '',
      args: [],
    );
  }

  /// `Complete your profile`
  String get complete_your_profile {
    return Intl.message(
      'Complete your profile',
      name: 'complete_your_profile',
      desc: '',
      args: [],
    );
  }

  /// `Set up my profile`
  String get set_up_my_profile {
    return Intl.message(
      'Set up my profile',
      name: 'set_up_my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Just 1 minute to complete`
  String get huddle_privacy_line1 {
    return Intl.message(
      'Just 1 minute to complete',
      name: 'huddle_privacy_line1',
      desc: '',
      args: [],
    );
  }

  /// `Huddle is a `
  String get huddle_privacy_line2_1 {
    return Intl.message(
      'Huddle is a ',
      name: 'huddle_privacy_line2_1',
      desc: '',
      args: [],
    );
  }

  /// `trusted and collaborative space`
  String get huddle_privacy_line2_2 {
    return Intl.message(
      'trusted and collaborative space',
      name: 'huddle_privacy_line2_2',
      desc: '',
      args: [],
    );
  }

  /// ` for parents.`
  String get huddle_privacy_line2_3 {
    return Intl.message(
      ' for parents.',
      name: 'huddle_privacy_line2_3',
      desc: '',
      args: [],
    );
  }

  /// `Completed profiles ensure that everyone knows who they're in a Huddle with.`
  String get huddle_privacy_line3 {
    return Intl.message(
      'Completed profiles ensure that everyone knows who they\'re in a Huddle with.',
      name: 'huddle_privacy_line3',
      desc: '',
      args: [],
    );
  }

  /// `Privacy is key`
  String get huddle_privacy_line4_1 {
    return Intl.message(
      'Privacy is key',
      name: 'huddle_privacy_line4_1',
      desc: '',
      args: [],
    );
  }

  /// `, so information about your family is only ever visible to the Huddles you've agreed to join.`
  String get huddle_privacy_line4_2 {
    return Intl.message(
      ', so information about your family is only ever visible to the Huddles you\'ve agreed to join.',
      name: 'huddle_privacy_line4_2',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get copied_to_clipboard {
    return Intl.message(
      'Copied to clipboard',
      name: 'copied_to_clipboard',
      desc: '',
      args: [],
    );
  }

  /// `In Huddle, your privacy and security are top priorities.`
  String get in_huddle_your_privacy_and_security {
    return Intl.message(
      'In Huddle, your privacy and security are top priorities.',
      name: 'in_huddle_your_privacy_and_security',
      desc: '',
      args: [],
    );
  }

  /// `Made for parents, by invitation only`
  String get made_for_parents_by_invitation_only {
    return Intl.message(
      'Made for parents, by invitation only',
      name: 'made_for_parents_by_invitation_only',
      desc: '',
      args: [],
    );
  }

  /// `Personal data is never sold to advertisers`
  String get personal_data_is_never_sold_to_advertisers {
    return Intl.message(
      'Personal data is never sold to advertisers',
      name: 'personal_data_is_never_sold_to_advertisers',
      desc: '',
      args: [],
    );
  }

  /// `Your family info is only visible to your Huddles`
  String get your_family_info_is_only_visible {
    return Intl.message(
      'Your family info is only visible to your Huddles',
      name: 'your_family_info_is_only_visible',
      desc: '',
      args: [],
    );
  }

  /// `Data encrypted and secured from hacker attacks`
  String get data_encrypted_and_secured {
    return Intl.message(
      'Data encrypted and secured from hacker attacks',
      name: 'data_encrypted_and_secured',
      desc: '',
      args: [],
    );
  }

  /// `For more details, see Huddles`
  String get for_more_details_see_huddle {
    return Intl.message(
      'For more details, see Huddles',
      name: 'for_more_details_see_huddle',
      desc: '',
      args: [],
    );
  }

  /// `Term of Service`
  String get term_of_service {
    return Intl.message(
      'Term of Service',
      name: 'term_of_service',
      desc: '',
      args: [],
    );
  }

  /// `and`
  String get and {
    return Intl.message(
      'and',
      name: 'and',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `I received this invitation code from my`
  String get i_received_this_invitation_code_from {
    return Intl.message(
      'I received this invitation code from my',
      name: 'i_received_this_invitation_code_from',
      desc: '',
      args: [],
    );
  }

  /// `Spouse`
  String get spouse {
    return Intl.message(
      'Spouse',
      name: 'spouse',
      desc: '',
      args: [],
    );
  }

  /// `Co-parent`
  String get coparent {
    return Intl.message(
      'Co-parent',
      name: 'coparent',
      desc: '',
      args: [],
    );
  }

  /// `sibling`
  String get sibling {
    return Intl.message(
      'sibling',
      name: 'sibling',
      desc: '',
      args: [],
    );
  }

  /// `{name} is your`
  String is_your(Object name) {
    return Intl.message(
      '$name is your',
      name: 'is_your',
      desc: '',
      args: [name],
    );
  }

  /// ` - just set your pic and neighborhood`
  String get just_set_your_pic_and_neighborhood {
    return Intl.message(
      ' - just set your pic and neighborhood',
      name: 'just_set_your_pic_and_neighborhood',
      desc: '',
      args: [],
    );
  }

  /// `Profile complete`
  String get profile_complete {
    return Intl.message(
      'Profile complete',
      name: 'profile_complete',
      desc: '',
      args: [],
    );
  }

  /// `Join me on Huddle, the chat app for parents. Download Huddle here at {download_link} and use my spouse/co-parent invitation code, {invitation_code}, to join.`
  String spouse_sharing_msg(Object download_link, Object invitation_code) {
    return Intl.message(
      'Join me on Huddle, the chat app for parents. Download Huddle here at $download_link and use my spouse/co-parent invitation code, $invitation_code, to join.',
      name: 'spouse_sharing_msg',
      desc: '',
      args: [download_link, invitation_code],
    );
  }

  /// `Current email address`
  String get current_email_address {
    return Intl.message(
      'Current email address',
      name: 'current_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Add your spouse / co-parent`
  String get add_your_spouse {
    return Intl.message(
      'Add your spouse / co-parent',
      name: 'add_your_spouse',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email address. Try again?`
  String get incorrect_email_address {
    return Intl.message(
      'Incorrect email address. Try again?',
      name: 'incorrect_email_address',
      desc: '',
      args: [],
    );
  }

  /// `Verification email sent to {email}`
  String resend_email_success(Object email) {
    return Intl.message(
      'Verification email sent to $email',
      name: 'resend_email_success',
      desc: '',
      args: [email],
    );
  }

  /// `month old`
  String get month_old {
    return Intl.message(
      'month old',
      name: 'month_old',
      desc: '',
      args: [],
    );
  }

  /// `months old`
  String get months_old {
    return Intl.message(
      'months old',
      name: 'months_old',
      desc: '',
      args: [],
    );
  }

  /// `year old`
  String get year_old {
    return Intl.message(
      'year old',
      name: 'year_old',
      desc: '',
      args: [],
    );
  }

  /// `years old`
  String get years_old {
    return Intl.message(
      'years old',
      name: 'years_old',
      desc: '',
      args: [],
    );
  }

  /// `parent`
  String get parent {
    return Intl.message(
      'parent',
      name: 'parent',
      desc: '',
      args: [],
    );
  }

  /// `co-parents`
  String get co_parent {
    return Intl.message(
      'co-parents',
      name: 'co_parent',
      desc: '',
      args: [],
    );
  }

  /// `My huddles`
  String get my_huddles {
    return Intl.message(
      'My huddles',
      name: 'my_huddles',
      desc: '',
      args: [],
    );
  }

  /// `attends/attended`
  String get attends_attended {
    return Intl.message(
      'attends/attended',
      name: 'attends_attended',
      desc: '',
      args: [],
    );
  }

  /// `attend/attended`
  String get attend_attended {
    return Intl.message(
      'attend/attended',
      name: 'attend_attended',
      desc: '',
      args: [],
    );
  }

  /// `contact here`
  String get contact_here {
    return Intl.message(
      'contact here',
      name: 'contact_here',
      desc: '',
      args: [],
    );
  }

  /// `contacts here`
  String get contacts_here {
    return Intl.message(
      'contacts here',
      name: 'contacts_here',
      desc: '',
      args: [],
    );
  }

  /// `New group Huddle`
  String get new_group_huddle {
    return Intl.message(
      'New group Huddle',
      name: 'new_group_huddle',
      desc: '',
      args: [],
    );
  }

  /// `Start a huddle`
  String get start_a_huddle {
    return Intl.message(
      'Start a huddle',
      name: 'start_a_huddle',
      desc: '',
      args: [],
    );
  }

  /// `{name} just joined. Tap to say hello!`
  String tap_to_say_hello_to_new_comer(Object name) {
    return Intl.message(
      '$name just joined. Tap to say hello!',
      name: 'tap_to_say_hello_to_new_comer',
      desc: '',
      args: [name],
    );
  }

  /// `Tap to say hello to {name}!`
  String tap_to_say_hello(Object name) {
    return Intl.message(
      'Tap to say hello to $name!',
      name: 'tap_to_say_hello',
      desc: '',
      args: [name],
    );
  }

  /// `New joiner - {name}`
  String new_joiner_name(Object name) {
    return Intl.message(
      'New joiner - $name',
      name: 'new_joiner_name',
      desc: '',
      args: [name],
    );
  }

  /// `Inviter - {name}`
  String inviter_name(Object name) {
    return Intl.message(
      'Inviter - $name',
      name: 'inviter_name',
      desc: '',
      args: [name],
    );
  }

  /// `Search...`
  String get search {
    return Intl.message(
      'Search...',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Group name here`
  String get group_name_here {
    return Intl.message(
      'Group name here',
      name: 'group_name_here',
      desc: '',
      args: [],
    );
  }

  /// `Add to your group`
  String get add_to_your_group {
    return Intl.message(
      'Add to your group',
      name: 'add_to_your_group',
      desc: '',
      args: [],
    );
  }

  /// `My Huddle Contacts`
  String get my_huddle_contact {
    return Intl.message(
      'My Huddle Contacts',
      name: 'my_huddle_contact',
      desc: '',
      args: [],
    );
  }

  /// `Others on Huddle`
  String get other_on_huddle {
    return Intl.message(
      'Others on Huddle',
      name: 'other_on_huddle',
      desc: '',
      args: [],
    );
  }

  /// `Group members`
  String get group_members {
    return Intl.message(
      'Group members',
      name: 'group_members',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure?`
  String get are_you_sure {
    return Intl.message(
      'Are you sure?',
      name: 'are_you_sure',
      desc: '',
      args: [],
    );
  }

  /// `Discard group`
  String get discard_group {
    return Intl.message(
      'Discard group',
      name: 'discard_group',
      desc: '',
      args: [],
    );
  }

  /// `Discard group?`
  String get discard_group_question {
    return Intl.message(
      'Discard group?',
      name: 'discard_group_question',
      desc: '',
      args: [],
    );
  }

  /// `Tap here for group info`
  String get tap_here_for_group_info {
    return Intl.message(
      'Tap here for group info',
      name: 'tap_here_for_group_info',
      desc: '',
      args: [],
    );
  }

  /// `Type message...`
  String get type_message_hint {
    return Intl.message(
      'Type message...',
      name: 'type_message_hint',
      desc: '',
      args: [],
    );
  }

  /// `Spouse added manually - {name}`
  String new_spouse_joined_name(Object name) {
    return Intl.message(
      'Spouse added manually - $name',
      name: 'new_spouse_joined_name',
      desc: '',
      args: [name],
    );
  }

  /// `Co-parent added manually - {name}`
  String new_co_parent_joined_name(Object name) {
    return Intl.message(
      'Co-parent added manually - $name',
      name: 'new_co_parent_joined_name',
      desc: '',
      args: [name],
    );
  }

  /// `Email `
  String get email {
    return Intl.message(
      'Email ',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Person not found?`
  String get person_not_found {
    return Intl.message(
      'Person not found?',
      name: 'person_not_found',
      desc: '',
      args: [],
    );
  }

  /// `Add your spouse/\nco-parents`
  String get add_your_spouse_co_parent {
    return Intl.message(
      'Add your spouse/\nco-parents',
      name: 'add_your_spouse_co_parent',
      desc: '',
      args: [],
    );
  }

  /// `Enter your spouse/coparent(s)'\ninvitation code`
  String get enter_your_spouse_invitation_code {
    return Intl.message(
      'Enter your spouse/coparent(s)\'\ninvitation code',
      name: 'enter_your_spouse_invitation_code',
      desc: '',
      args: [],
    );
  }

  /// `This spouse/co-parent is already part of your profile`
  String get spouse_already_exit {
    return Intl.message(
      'This spouse/co-parent is already part of your profile',
      name: 'spouse_already_exit',
      desc: '',
      args: [],
    );
  }

  /// `Back to my profile`
  String get back_to_my_profile {
    return Intl.message(
      'Back to my profile',
      name: 'back_to_my_profile',
      desc: '',
      args: [],
    );
  }

  /// `Invite them to the huddle`
  String get invite_them_to_huddle {
    return Intl.message(
      'Invite them to the huddle',
      name: 'invite_them_to_huddle',
      desc: '',
      args: [],
    );
  }

  /// `Edits to your profile have been saved.`
  String get profile_saved {
    return Intl.message(
      'Edits to your profile have been saved.',
      name: 'profile_saved',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove {
    return Intl.message(
      'Remove',
      name: 'remove',
      desc: '',
      args: [],
    );
  }

  /// `Edit child profile`
  String get edit_child_profile_header {
    return Intl.message(
      'Edit child profile',
      name: 'edit_child_profile_header',
      desc: '',
      args: [],
    );
  }

  /// `Remove {name} from your profile?`
  String remove_from_profile(Object name) {
    return Intl.message(
      'Remove $name from your profile?',
      name: 'remove_from_profile',
      desc: '',
      args: [name],
    );
  }

  /// `Invalid code, please try again.`
  String get invalid_spouse_code {
    return Intl.message(
      'Invalid code, please try again.',
      name: 'invalid_spouse_code',
      desc: '',
      args: [],
    );
  }

  /// `Group info`
  String get group_info {
    return Intl.message(
      'Group info',
      name: 'group_info',
      desc: '',
      args: [],
    );
  }

  /// `Share a link to this huddle`
  String get share_link_to_this_huddle {
    return Intl.message(
      'Share a link to this huddle',
      name: 'share_link_to_this_huddle',
      desc: '',
      args: [],
    );
  }

  /// `Set group photo`
  String get set_group_photo {
    return Intl.message(
      'Set group photo',
      name: 'set_group_photo',
      desc: '',
      args: [],
    );
  }

  /// `Huddle`
  String get huddle {
    return Intl.message(
      'Huddle',
      name: 'huddle',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get actions {
    return Intl.message(
      'Actions',
      name: 'actions',
      desc: '',
      args: [],
    );
  }

  /// `Leave`
  String get leave {
    return Intl.message(
      'Leave',
      name: 'leave',
      desc: '',
      args: [],
    );
  }

  /// `Remove this location from your child’s profile?`
  String get remove_location {
    return Intl.message(
      'Remove this location from your child’s profile?',
      name: 'remove_location',
      desc: '',
      args: [],
    );
  }

  /// `{name} is my`
  String is_my_child(Object name) {
    return Intl.message(
      '$name is my',
      name: 'is_my_child',
      desc: '',
      args: [name],
    );
  }

  /// `{name} was born on`
  String was_born_on(Object name) {
    return Intl.message(
      '$name was born on',
      name: 'was_born_on',
      desc: '',
      args: [name],
    );
  }

  /// `Exit without saving?`
  String get exit_without_saving {
    return Intl.message(
      'Exit without saving?',
      name: 'exit_without_saving',
      desc: '',
      args: [],
    );
  }

  /// `My contacts`
  String get my_contacts {
    return Intl.message(
      'My contacts',
      name: 'my_contacts',
      desc: '',
      args: [],
    );
  }

  /// `By logging in, you agree to our `
  String get by_logging_in_you_agree {
    return Intl.message(
      'By logging in, you agree to our ',
      name: 'by_logging_in_you_agree',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service`
  String get terms_of_service {
    return Intl.message(
      'Terms of Service',
      name: 'terms_of_service',
      desc: '',
      args: [],
    );
  }

  /// `Huddle members`
  String get huddle_members {
    return Intl.message(
      'Huddle members',
      name: 'huddle_members',
      desc: '',
      args: [],
    );
  }

  /// `Already part of this Huddle`
  String get already_part {
    return Intl.message(
      'Already part of this Huddle',
      name: 'already_part',
      desc: '',
      args: [],
    );
  }

  /// `Require camera\npermission`
  String get require_camera_permission {
    return Intl.message(
      'Require camera\npermission',
      name: 'require_camera_permission',
      desc: '',
      args: [],
    );
  }

  /// `Huddle uses camera access to set your\nprofile photo and share photos and videos.`
  String get require_camera_permission_explained {
    return Intl.message(
      'Huddle uses camera access to set your\nprofile photo and share photos and videos.',
      name: 'require_camera_permission_explained',
      desc: '',
      args: [],
    );
  }

  /// `Require photo\ngallery permission`
  String get require_gallery_permission {
    return Intl.message(
      'Require photo\ngallery permission',
      name: 'require_gallery_permission',
      desc: '',
      args: [],
    );
  }

  /// `Huddle uses photo gallery access to\nset your profile photo and share\nphotos and videos.`
  String get require_gallery_permission_explained {
    return Intl.message(
      'Huddle uses photo gallery access to\nset your profile photo and share\nphotos and videos.',
      name: 'require_gallery_permission_explained',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
