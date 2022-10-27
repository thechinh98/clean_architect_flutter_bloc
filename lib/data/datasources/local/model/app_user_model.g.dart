// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AppUserModelAdapter extends TypeAdapter<AppUserModel> {
  @override
  final int typeId = 9;

  @override
  AppUserModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AppUserModel(
      profileId: fields[0] as String?,
      firstName: fields[1] as String?,
      lastName: fields[2] as String?,
      avatarUrl: fields[3] as String?,
      phoneNumber: fields[4] as String?,
      addressPolitical: fields[6] as String?,
      accessToken: fields[7] as String?,
      countryCode: fields[5] as String?,
      emailStatus: fields[8] as int?,
      email: fields[9] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, AppUserModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.profileId)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.avatarUrl)
      ..writeByte(4)
      ..write(obj.phoneNumber)
      ..writeByte(5)
      ..write(obj.countryCode)
      ..writeByte(6)
      ..write(obj.addressPolitical)
      ..writeByte(7)
      ..write(obj.accessToken)
      ..writeByte(8)
      ..write(obj.emailStatus)
      ..writeByte(9)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppUserModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
