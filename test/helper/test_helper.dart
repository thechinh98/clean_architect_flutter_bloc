import 'package:base_flutter_bloc/domain/repository/auth_repository.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;

@GenerateMocks([AuthRepository],
    customMocks: [MockSpec<http.Client>(as: #MockHttpClient)])
void main() {}
