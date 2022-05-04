import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_app/application/auth/auth_bloc.dart';
import 'package:flutter_my_app/application/books/books_collection_bloc_bloc.dart';
import 'package:flutter_my_app/domain/book/book_model.dart';
import 'package:flutter_my_app/presentation/books/book_detail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late BooksCollectionBlocBloc booksBloc;
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = BlocProvider.of<AuthBloc>(context);
    booksBloc = BlocProvider.of<BooksCollectionBlocBloc>(context);
    booksBloc.add(const BooksCollectionBlocEvent.fetchBooks());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                authBloc.add(const AuthEvent.signOut());
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        title: Text(widget.title),
      ),
      body: BlocBuilder<BooksCollectionBlocBloc, BooksCollectionBlocState>(
        builder: (_, state) {
          final bookOrFailure = state.booksFailureOrSuccessOption;

          return bookOrFailure.fold(() {
            return const Center(child: CircularProgressIndicator());
          }, (either) {
            return either.fold((failure) {
              return SizedBox(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Something went wrong. Please try again"),
                      const SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: () async {
                          booksBloc
                              .add(const BooksCollectionBlocEvent.fetchBooks());
                        },
                        color: Colors.blue,
                        shape: const StadiumBorder(),
                        elevation: 0,
                        splashColor: Colors.transparent,
                        child: const Text(
                          'Try Again',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }, (books) {
              return SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          ListView.builder(
                            controller: scrollController,
                            itemCount: books.length,
                            itemBuilder: (_, int index) {
                              return Container(
                                width: 130,
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                ),
                                child: Column(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Card(
                                        elevation: 0,
                                        color: const Color(0xFFf4f4f4),
                                        child: ListTile(
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                            10,
                                            0,
                                            10,
                                            0,
                                          ),
                                          title: Text(
                                            books[index].title!,
                                            style: const TextStyle(
                                              fontFamily: "DINregular",
                                              fontSize: 22,
                                            ),
                                          ),
                                          trailing: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              MaterialButton(
                                                onPressed: () async {
                                                  final Book _book =
                                                      books[index];
                                                  booksBloc.add(
                                                    BooksCollectionBlocEvent
                                                        .fetchBookDetail(
                                                      _book,
                                                      context,
                                                    ),
                                                  );

                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          Center(
                                                        child: BookDetail(
                                                          book: _book,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                },
                                                color: Colors.blue,
                                                shape: const StadiumBorder(),
                                                elevation: 0,
                                                splashColor: Colors.transparent,
                                                child: const Text(
                                                  'Book Detail',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            });
          });
        },
      ),
    );
  }
}
