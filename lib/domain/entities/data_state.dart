import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class DataState<T> extends Equatable {
  const DataState({this.data, this.error, this.unknownError});

  final T? data;
  final DioError? error;
  final dynamic unknownError;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);

  @override
  List<Object?> get props => [data];
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioError? error, {dynamic unknownError})
      : super(error: error, unknownError: unknownError);

  @override
  List<Object?> get props => [error, unknownError];
}

extension DataStateX<T> on DataState<T> {
  void foldSuccess({required Function(T?) onSuccess}) {
    if (this is DataSuccess) {
      onSuccess(data);
    }
  }

  void foldSuccessAndFailure(
      {required Function(T?) onSuccess,
      required Function(DioError? error) onFailure}) {
    if (this is DataSuccess) {
      onSuccess(data);
    } else {
      onFailure(error);
    }
  }
}
