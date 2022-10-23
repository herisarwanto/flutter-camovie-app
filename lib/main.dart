import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/injector.dart';
import 'package:movie_app/persentation/blocs/movie_bloc.dart';
import 'package:movie_app/persentation/pages/home_page.dart';
import 'injection.dart' as di;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MovieBloc movieBloc = getIt<MovieBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => movieBloc..add(GetNowPlayingMoviesEvent()),
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}