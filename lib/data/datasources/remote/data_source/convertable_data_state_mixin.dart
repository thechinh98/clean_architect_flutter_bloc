import 'dart:io';

import 'package:base_flutter_bloc/data/mapper/base_mapper.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../domain/entities/data_state.dart';

mixin ConvertAbleDataState {
  DataState<A> convertToDataState<A, B>(
      HttpResponse<B> response, BaseMapper<A, B> mapper) {
    if (response.response.statusCode == HttpStatus.ok) {
      return DataSuccess<A>(mapper.call(response.data));
    }
    return DataFailed<A>(
      DioError(
        error: response.response.statusMessage,
        response: response.response,
        type: DioErrorType.response,
        requestOptions: response.response.requestOptions,
      ),
    );
  }
}