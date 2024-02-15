abstract class UseCase<P,R>{
  Future<R> call(P argument);
}