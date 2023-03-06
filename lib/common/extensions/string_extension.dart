extension StringNullExtension on String? {
  bool isPhoneNumber() {
    if (this == null) return false;
    final RegExp phoneNumber =
        RegExp(r'^[2-9][0-9][0-9]-[2-9][0-9][0-9]-[0-9]{4}$');
    return phoneNumber.hasMatch(this!);
  }

  bool isVerifyCode() {
    if (this == null) return false;
    final RegExp codeReg = RegExp(r'^[0-9]{6}$');
    return codeReg.hasMatch(this!);
  }

  bool isEmailAddress() {
    if (this == null) return false;
    final RegExp email =
        RegExp(r'^(([\w-\.])*[\w]+){4,}@([\w-]+\.)+[\w-]{2,4}$');
    return email.hasMatch(this!);
  }

  bool isEmptyOrNull() {
    if (this == null) return true;
    return this!.isEmpty;
  }

//
//   String? validateName() {
//     if (this == null) return S().error_required_field;
//     if (this!.isEmpty) return S().error_required_field;
//     final RegExp nameReg = RegExp(r'^([ ]{0,}[A-Za-z]{1,}[ ]{0,})+$');
// // for (String c in this!.split(kEmptyString)) {
// // logi(message: "'${this!.toString().formatName()}'",tag: "validateName");
//     if (!nameReg.hasMatch(this!)) {
//       return S().error_invalid_name;
//     }
// // }
//     return null;
//   }

  // String? validateEmpty() {
  //   if (this != null) {
  //     if (this!.isNotEmpty) {
  //       return null;
  //     }
  //   }
  //   return S().error_required_field;
  // }

  String toReadableAge() {
    if (this == null) return '';
    int? moIndex = this!.indexOf('mo');
    if (moIndex != -1) {
      return '${this!.substring(0, moIndex)} mo';
    }
    return this!;
  }

  String toEncodedEmail() {
    if (isEmptyOrNull()) return '';
    String emailContent = this!.split('@').first;
    String domain = this!.split('@')[1];
    int startIndex = 0;
    int endIndex = emailContent.length;
    if (emailContent.length <= 8) {
      startIndex = 1;
    } else {
      startIndex = 2;
      endIndex -= 2;
    }
    String subEncodeContent = '';
    for (int i = startIndex; i < endIndex; i++) {
      subEncodeContent += '*';
    }
    String encodedEmail = '${emailContent.substring(0, startIndex)}'
        '$subEncodeContent${emailContent.substring(endIndex)}@$domain';
    return encodedEmail;
  }
}

extension StringExtension on String {
  String formatPhoneNumber() {
    String s = toString();
    if (s.isNotEmpty) {
      s = s.replaceAll(RegExp(r'-{2,}'), '-');
      List<String> list = s.split('');
      if (list.last == '-') {
        list.removeLast();
      } else {
        if (list.length == 4) {
          list.insert(3, '-');
        } else if (list.length == 8) {
          list.insert(7, '-');
        } else if (list.length > 12) {
          list.removeLast();
        }
      }
      if (list.length > 3 && list[3] != '-') {
        list.insert(3, '-');
      }
      if (list.length > 7 && list[7] != '-') {
        list.insert(7, '-');
      }
      return list.join();
    }
    return s;
  }

  String formatName() {
    return replaceAll(RegExp(r'[ ]{2,}'), ' ').trim();
  }

  String normalizePhoneNumber() {
    String phoneNumber = toString();
    return phoneNumber.replaceAll('-', '');
  }

  bool isEvenNumber() {
    if (int.tryParse(this) == null) return false;
    return int.parse(this) % 2 == 0;
  }

  bool isOddNumber() {
    if (int.tryParse(this) == null) return false;
    return int.parse(this) % 2 != 0;
  }
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';

  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((String str) => str.toCapitalized())
      .join(' ');
}

extension StringTimeExtension on String {
  bool has30Days() {
    return <String>[
      '04',
      '05',
      '06',
      '09',
      '11',
    ].contains(this);
  }

  bool has31Days() {
    return <String>[
      '01',
      '03',
      '05',
      '07',
      '08',
      '10',
      '12',
    ].contains(this);
  }

  bool isLeapYear() {
    if (int.tryParse(this) == null) return false;
    int year = int.parse(this);
    return year % 400 == 0 || (year % 4 == 0 && year % 100 != 0);
  }

  String? get getMonthString {
    switch (this) {
      case '1':
        return 'January';
      case '2':
        return 'February';
      case '3':
        return 'March';
      case '4':
        return 'April';
      case '5':
        return 'May';
      case '6':
        return 'June';
      case '7':
        return 'July';
      case '8':
        return 'August';
      case '9':
        return 'September';
      case '10':
        return 'October';
      case '11':
        return 'November';
      case '12':
        return 'December';
    }
    return null;
  }
}

extension StringMessageExtension on String {
  bool isMedia() {
    return isPhoto() || isVideo();
  }

  bool isPhoto() {
    final RegExp photo = RegExp(r'^.*(\.(jpe?g|jpe|png|gif|bmp))$');
    return photo.hasMatch(toLowerCase());
  }

  bool isVideo() {
    final RegExp video = RegExp(r'^.*(\.(mp3|mp4|mkv|mov|3gp))$');
    return video.hasMatch(toLowerCase());
  }

  /// return the normal text, the url text, the mention text
  List<String> getMessageParts() {
    if (length == 1) return <String>[this];
    RegExp exp = RegExp(
        r'(((https?|ftp):\/\/)[\w/\-?=%&.]+\.[\w/\-?=%&.]+)|([\^| ]{1}@{"id":"(\d+)","name":"([a-zA-Z ]+)"}[ ]{1})');
    Iterable<RegExpMatch> matches = exp.allMatches(this);
    final List<RegExpMatch> matchesList = matches.toList()
      ..sort((RegExpMatch a, RegExpMatch b) => a.start - b.start);
    final List<String> res = <String>[];
    int previous = 0;
    int lastIndex = 0;
    for (RegExpMatch match in matchesList) {
      if (previous < match.start - 1) {
        res.add(
          substring(
            previous,
            match.start,
          ),
        );
        previous = match.start;
      }
      if (match.start < match.end - 1) {
        res.add(
          substring(
            match.start,
            match.end,
          ),
        );
        previous = match.end;
      }
      // previous = match.start;
      lastIndex = match.end;
    }
    if (lastIndex < length - 1) res.add(substring(lastIndex));
    return res;
  }

  bool isUrl() =>
      RegExp(r'((https?|ftp):\/\/)[\w/\-?=%&.]+\.[\w/\-?=%&.]+').hasMatch(this);

  String toUrl() {
    if (!RegExp(r'^(https?|ftp)').hasMatch(this)) {
      return 'http://$this';
    }
    return this;
  }

  bool isMentionWord() =>
      RegExp(r' @{"id":"(\d+)","name":"([a-zA-Z ]+)"} ').hasMatch(this);

  String getMentionString() => trim().substring(1);
}
