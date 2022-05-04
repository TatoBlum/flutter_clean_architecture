import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_app/application/books/books_collection_bloc_bloc.dart';
import 'package:flutter_my_app/domain/book/book_model.dart';

class BookDetail extends StatefulWidget {
  final Book book;

  const BookDetail({Key? key, required this.book}) : super(key: key);

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  late BooksCollectionBlocBloc booksBloc;

  @override
  void initState() {
    // booksBloc = BlocProvider.of<BooksCollectionBlocBloc>(context);
    // booksBloc
    //     .add(BooksCollectionBlocEvent.fetchBookDetail(widget.book, context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invader Detail'),
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<BooksCollectionBlocBloc, BooksCollectionBlocState>(
        builder: (_, state) {
          final bookOrFailure = state.booksFailureOrSuccessOption;

          if (state.isLoading == true) {
            return const Center(child: CircularProgressIndicator());
          }

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
                          booksBloc.add(
                            BooksCollectionBlocEvent.fetchBookDetail(
                              widget.book,
                              context,
                            ),
                          );
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
            }, (book) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.book.title ?? "",
                      style: const TextStyle(
                        fontFamily: "DINregular",
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
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
