import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';

import '../entities/data_state.dart';
import '../entities/user_info_entity.dart';

abstract class AuthRepository {
  Future<DataState<AuthEntity>> login(String phoneNumber, String countryCode);
  Future<UserInfoEntity> getUserInfo();
}