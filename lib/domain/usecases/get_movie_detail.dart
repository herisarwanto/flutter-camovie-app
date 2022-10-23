import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:movie_app/common/failure.dart';
import 'package:movie_app/common/usecase.dart';
import 'package:movie_app/domain/entities/movie.codegen.dart';
import 'package:movie_app/domain/repositories/movie_repository.dart';

@injectable
class GetMovieDetailUseCase extends UseCase<MovieDetail, GetMovieDetailParams> {
  final MovieRepository _movieRepository;

  const GetMovieDetailUseCase(this._movieRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(GetMovieDetailParams params) {
    return _movieRepository.getMovieDetail(params.id);
  }
}

class GetMovieDetailParams extends Equatable {
  final int id;

  const GetMovieDetailParams({
    required this.id,
  });

  @override
  List<Object> get props => [id];
}
