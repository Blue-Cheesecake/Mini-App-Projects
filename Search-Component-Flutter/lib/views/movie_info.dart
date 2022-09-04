import 'package:flutter/material.dart';
import 'package:search_component_flutter/models/movie_model.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({Key? key, required this.movie}) : super(key: key);

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.blue),
          backgroundColor: const Color(0xfff5f5f5),
          title: const Text(
            'Information',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
          ),
          elevation: 3.0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  movie.movieTitle!,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 20),
                Text("Released Date: ${movie.movie_released_year}"),
                const SizedBox(height: 20),
                Text("Rating: ${movie.rating}"),
              ],
            ),
          ),
        ));
  }
}
