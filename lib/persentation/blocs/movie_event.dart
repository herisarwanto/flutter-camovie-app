part of 'movie_bloc.dart';

@immutable
abstract class MovieEvent extends Equatable {
  const MovieEvent();

  @override
  List<Object> get props => [];
}

class GetNowPlayingMoviesEvent extends MovieEvent {
  // final List<MovieModel> movieList;
  //
  // const GetNowPlayingMoviesEvent({
  //   required this.movieList,
  // });
}
