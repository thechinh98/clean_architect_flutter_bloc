import 'package:base_flutter_bloc/domain/entities/base_entity_model.dart';

class AuthEntity extends BaseEntityModel{
  String token = "";

  AuthEntity({required this.token});
}