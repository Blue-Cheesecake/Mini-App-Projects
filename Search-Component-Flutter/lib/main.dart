import 'package:flutter/material.dart';
import 'package:search_component_flutter/models/movie_model.dart';
import 'package:search_component_flutter/view_model/movie_service.dart';
import 'package:search_component_flutter/views/movie_info.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: "/",
      routes: {"/": (_) => const Homepage()},
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var inputController = TextEditingController();

  List<MovieModel> displayList = List.from(MovieService.movieData);

  void updateList(String query) {
    setState(() {
      displayList = MovieService.movieData
          .where((element) =>
              element.movieTitle!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  void clearTextField() {
    setState(() {
      inputController.text = "";
      displayList = List.from(MovieService.movieData);
    });
  }

  Widget _buildMovieList(BuildContext context) {
    return ListView.builder(
      itemCount: displayList.length,
      itemBuilder: (context, index) {
        final movie = displayList[index];
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => MovieInfo(movie: movie)));
          },
          child: ListTile(
            title: Text(movie.movieTitle!),
            subtitle: Text(movie.movie_released_year!.toString()),
            trailing: Text(
              movie.rating.toString(),
              style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    const textFieldBorderRad = 10.00;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfff5f5f5),
        title: const Text(
          'Search Box',
          style: TextStyle(color: Colors.blue),
        ),
        elevation: 3.0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(textFieldBorderRad),
                  ),
                  elevation: 10,
                  child: TextField(
                    controller: inputController,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        onPressed: clearTextField,
                        icon: const Icon(Icons.clear),
                      ),
                      hintText: "Spotlight Search",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(textFieldBorderRad),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onChanged: (value) => updateList(value),
                    onSubmitted: (inputString) {},
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                    child: displayList.isEmpty
                        ? const Text(
                            "Not Found",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        : _buildMovieList(context))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
