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
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w200),
          ),
          elevation: 3.0,
        ),
        body: Column(
          children: [],
        ));
  }
}
