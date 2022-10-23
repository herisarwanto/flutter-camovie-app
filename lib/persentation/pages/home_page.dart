import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/common/constants.dart';
import 'package:movie_app/data/models/movie_model.codegen.dart';
import 'package:movie_app/persentation/blocs/movie_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<MovieModel> _movieList = [];
  bool _isLoading = false;

  void _getNowPlayingMovies(MovieState state) {
    state.movieList.fold(
        () => null,
        (a) => a.map((r) {
              return _movieList.addAll(r);
            }));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MovieBloc, MovieState>(
      listener: (context, state) {
        if (state.movieStatus == MovieStatus.loading) {
          _isLoading = true;
        }

        if (state.movieStatus == MovieStatus.loaded) {
          _isLoading = false;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Movie App'),
        ),
        body: BlocBuilder<MovieBloc, MovieState>(
          builder: (context, state) {
            _getNowPlayingMovies(state);

            return !_isLoading
                ? _movieList.isNotEmpty
                    ? ListView.builder(
                        itemCount: _movieList.length,
                        itemBuilder: (BuildContext context, int index) {
                          var movie = _movieList[index];

                          return Card(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListTile(
                                leading: Image.network(
                                    '$IMAGE_URL${movie.posterPath}'),
                                title: Text(movie.title),
                                subtitle: Text(movie.overview),
                              ),
                            ),
                          );
                        },
                      )
                    : const Text('No Item')
                : const Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
