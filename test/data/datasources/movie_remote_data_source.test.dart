import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/common/constants.dart';
import 'package:movie_app/data/datasources/movie_remote_data_source.dart';
import 'package:movie_app/data/datasources/movie_remote_data_source_impl.dart';
import 'package:movie_app/data/models/movie_model.codegen.dart';
import 'package:mockito/annotations.dart';
import '../../json_reader.dart';
import 'movie_remote_data_source.test.mocks.dart';

/// MissingStubError: 'get' No stub was found which matches the arguments
/// of this method call: with dio flutter
/// API_KEY different!!!, Wrong API_KEY

@GenerateMocks([Dio])
void main() {
  Dio dio = MockDio();

  // const API_KEY = 'api_key=2174d146bb9c0eab47529b2e77d6b526'; //keydcd

  late MovieRemoteDataSource dataSource;

  setUp(() {
    dataSource = MovieRemoteDataSourceImpl(dio);
  });

  group('get now playing movie', () {
    final tNowPlayig = readJson('dummy_data/now_playing.json');
    final tNowPlayigResponse = MovieResponse.fromJson(jsonDecode(tNowPlayig)).movieList;

    test('should return now playing movie when the response code is 200',
        () async {
      when(dio.get('$NOW_PLAYING_URL?$API_KEY')).thenAnswer((_) async {
        return Future.value(Response<dynamic>(
            data: tNowPlayig,
            statusCode: 200,
            requestOptions: RequestOptions(path: '$NOW_PLAYING_URL?$API_KEY')));
      });

      final result = await dataSource.getNowPlayingMovies();
      var datas = <MovieModel>[];

      result.fold((failure) => null, (data) {
        datas = data;
      });

      expect(result, isNotNull);
      expect(result.isRight(), true);

      /// Expected value of right
      /// Actual value of left
      expect(datas, equals(tNowPlayigResponse));
    });
  });

  group('get movie detail', () {
    const tId = 1;
    final tMovieDetailResponse = MovieDetailResponse.fromJson(
        json.decode(readJson('dummy_data/movie_detail.json')));

    final tMovieDetail = json.decode(readJson('dummy_data/movie_detail.json'));

    // arrange
    test('should return movie detail when the response code is 200', () async {
      when(dio.get('$MOVIE_URL$tId?$API_KEY')).thenAnswer((_) async {
        return Future.value(Response<dynamic>(
            data: tMovieDetail,
            statusCode: 200,
            requestOptions:
                RequestOptions(path: '$BASE_URL/movie/$tId?$API_KEY')));
      });

      // act
      final result = await dataSource.getMovieDetail(tId);

      // assert
      expect(result, isNotNull);
      expect(result.isRight(), true);
      expect(result, equals(right(tMovieDetailResponse)));
    });

    test('should return movie detail when the response code is 404', () async {
      when(dio.get('$MOVIE_URL$tId?$API_KEY')).thenAnswer((_) async {
        return Future.value(Response<dynamic>(
            data: {
              {
                'success': false,
                'status_code': 34,
                'status_message':
                    'The resource you requested could not be found.'
              }
            },
            statusCode: 404,
            requestOptions:
                RequestOptions(path: '$BASE_URL/movie/1?$API_KEY')));
      });

      // act
      final result = await dataSource.getMovieDetail(tId);

      // assert
      expect(result.isLeft(), true);
    });
  });
}
