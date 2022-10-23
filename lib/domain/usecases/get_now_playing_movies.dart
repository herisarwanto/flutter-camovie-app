import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/common/failure.dart';
import 'package:movie_app/common/usecase.dart';
import 'package:movie_app/domain/entities/movie.codegen.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

@injectable
class GetNowPlayingMoviesUseCase
    extends UseCase<List<Movie>, NoParams> {
  final MovieRepository _movieRepository;

  const GetNowPlayingMoviesUseCase(this._movieRepository);

  @override
  Future<Either<Failure, List<Movie>>> call(NoParams params) async {
    return _movieRepository.getNowPlayingMovies();
  }
}