import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/controller/search_movie/search_movie.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController searchEditingController =
        TextEditingController();
    return Scaffold(
      body: Column(
        children: [
          // search bar
          CupertinoSearchTextField(
            controller: searchEditingController,
            onChanged: (value) {
              ref.read(
                searchMovieProvider(query: searchEditingController.text),
              );
            },
          ),
          // grid view search list
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (context, index) => Container(
                color: Colors.yellow,
              ),
            ),
          )
        ],
      ),
    );
  }
}
