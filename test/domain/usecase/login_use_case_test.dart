import 'package:base_flutter_bloc/domain/entities/auth_entities.dart';
import 'package:base_flutter_bloc/domain/entities/data_state.dart';
import 'package:base_flutter_bloc/domain/use_case/auth_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/test_helper.mocks.dart';

void main() {
  late LoginUseCase loginUseCase;
  late MockAuthRepository mockAuthRepository;

  setUp(() {
    mockAuthRepository = MockAuthRepository();
    loginUseCase = LoginUseCase(mockAuthRepository);
  });
  AuthEntity testAuthEntity = AuthEntity(token: 'empty');

  test('should login', () {
    when(mockAuthRepository.login())
        .thenAnswer((_) async => DataSuccess(testAuthEntity));
  });
}
