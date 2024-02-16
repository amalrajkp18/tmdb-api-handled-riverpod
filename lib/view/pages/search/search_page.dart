import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/utils/app_units.dart';

class SearchPage extends ConsumerWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController searchEditingController =
        TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.width(0.02)),
          child: Column(
            children: [
              // search bar
              CupertinoSearchTextField(
                controller: searchEditingController,
                padding: EdgeInsets.symmetric(
                  vertical: context.width(0.03),
                  horizontal: context.width(0.02),
                ),
                onChanged: (value) {
                  // ref
                  //     .read(searchMovieProvider.notifier)
                  //     .search(query: searchEditingController.text);
                },
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.cancel_outlined),
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                ),
              ),
              // grid view search list
              // Expanded(
              //   child: ref.watch().when(
              //         data: (data) {
              //           return data.results.isEmpty
              //               ? const Center(
              //                   child: Text("Not Found"),
              //                 )
              //               : GridView.builder(
              //                   padding: EdgeInsets.only(
              //                     top: context.width(0.04),
              //                   ),
              //                   gridDelegate:
              //                       SliverGridDelegateWithFixedCrossAxisCount(
              //                     crossAxisCount: 3,
              //                     mainAxisSpacing: context.width(0.02),
              //                     crossAxisSpacing: context.width(0.01),
              //                     childAspectRatio: 0.6,
              //                   ),
              //                   itemBuilder: (context, index) => ClipRRect(
              //                     borderRadius: BorderRadius.circular(
              //                       context.width(0.02),
              //                     ),
              //                     child: Image.network(
              //                       "${ApiAppend.imageUrl}${data.results[index].backdropPath}",
              //                       fit: BoxFit.cover,
              //                     ),
              //                   ),
              //                   itemCount: data.results.length,
              //                 );
              //         },
              //         error: (error, stackTrace) => Center(
              //           child: Column(
              //             mainAxisAlignment: MainAxisAlignment.center,
              //             children: [
              //               const Text("Something occured"),
              //               IconButton(
              //                 onPressed: () {
              //                       // ref.invalidate(searchMovieProvider);
              //                 },
              //                 icon: const Icon(Icons.replay_outlined),
              //               )
              //             ],
              //           ),
              //         ),
              //         loading: () => const Center(
              //           child: CircularProgressIndicator(),
              //         ),
              //       ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
