import 'package:base_flutter_bloc/data/datasources/remote/api/auth_api.dart';
import 'package:base_flutter_bloc/domain/repository/auth_repository.dart';
import 'package:base_flutter_bloc/domain/use_case/auth_use_case.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([AuthRepository,AuthApi, LoginUseCase],
    customMocks: [MockSpec<http.Client>(as: #MockHttpClient)])
void main() {}
