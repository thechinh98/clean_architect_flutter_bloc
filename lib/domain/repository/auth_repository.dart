import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';

import '../entities/data_state.dart';

abstract class AuthRepository {
  Future<DataState<AuthEntity>> login();
}