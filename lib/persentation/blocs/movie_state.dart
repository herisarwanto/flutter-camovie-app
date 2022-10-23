part of 'movie_bloc.dart';

enum MovieStatus {
  initial,
  loading,
  loaded,
  error,
}

class MovieState extends Equatable {
  final MovieStatus movieStatus;
  final Option<Either<Failure, List<MovieModel>>> movieList;

  const MovieState({
    required this.movieStatus,
    required this.movieList,
  });

  factory MovieState.initial() => MovieState(
        movieStatus: MovieStatus.initial,
        movieList: none(),
      );

  @override
  String toString() {
    return 'MovieState{movieStatus: $movieStatus, movieModel: $movieList}';
  }

  @override
  List<Object> get props => [movieStatus, movieList];

  MovieState copyWith({
    MovieStatus? movieStatus,
    Option<Either<Failure, List<MovieModel>>>? movieList,
  }) {
    return MovieState(
      movieStatus: movieStatus ?? this.movieStatus,
      movieList: movieList ?? this.movieList,
    );
  }
}
