import 'package:dio/dio.dart';

abstract class DataState<T> {
  const DataState({this.data, this.error, this.unknownError});

  final T? data;
  final DioError? error;
  final dynamic unknownError;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError? error, {dynamic unknownError})
      : super(error: error, unknownError: unknownError);
}