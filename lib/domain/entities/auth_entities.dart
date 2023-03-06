import 'package:base_flutter_bloc/domain/entities/base_entity_model.dart';

class AuthEntity extends BaseEntityModel{
  AuthEntity({required this.token});

  String token = '';
}