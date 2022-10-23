import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:movie_app/common/failure.dart';
import 'package:movie_app/common/usecase.dart';
import 'package:movie_app/data/models/movie_model.codegen.dart';
import 'package:movie_app/domain/entities/movie.codegen.dart';
import 'package:movie_app/domain/usecases/get_now_playing_movies.dart';

part 'movie_event.dart';

part 'movie_state.dart';

@injectable
class MovieBloc extends Bloc<MovieEvent, MovieState> {
  final GetNowPlayingMoviesUseCase _getNowPlayingMoviesUseCase;

  MovieBloc(this._getNowPlayingMoviesUseCase) : super(MovieState.initial()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlayingMovies);
  }

  Future<void> _getNowPlayingMovies(
    GetNowPlayingMoviesEvent event,
    Emitter<MovieState> emit,
  ) async {
    var _nowPlayingMovies = <MovieModel>[];

    emit(state.copyWith(movieStatus: MovieStatus.loading));

    final nowPlayingMoviesResult =
        await _getNowPlayingMoviesUseCase.call(NoParams());

    nowPlayingMoviesResult.fold((failure) => null, (moviesData) {
      _nowPlayingMovies = moviesData.map((e) => e.toMovieModel()).toList();
    });

    emit(
      state.copyWith(
        movieList: optionOf(right(_nowPlayingMovies)),
        movieStatus: MovieStatus.loaded,
      ),
    );
  }
}
