import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_app/application/books/books_bloc/books_bloc.dart';
import 'package:flutter_my_app/models/book_model.dart';
import 'package:flutter_my_app/services/api_services.dart';

class BookDetail extends StatefulWidget {
  final Book book;

  const BookDetail({Key? key, required this.book}) : super(key: key);

  @override
  State<BookDetail> createState() => _BookDetailState();
}

class _BookDetailState extends State<BookDetail> {
  late BooksBloc booksBloc;
  final ApiServices apiServices = ApiServices();

  @override
  void initState() {
    booksBloc = BlocProvider.of<BooksBloc>(context);
    booksBloc.add(FetchBookDetail(widget.book, context));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invader Detail'),
        backgroundColor: Colors.blue,
      ),
      body: BlocBuilder<BooksBloc, BooksState>(
        builder: (_, state) {
          print(state);

          if (state is LoadingBooks) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is BooksWithBookDetail) {
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
          }
          /**
            if state is BooksErrorMessage
          **/
          else {
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
                        booksBloc.add(FetchBookDetail(widget.book, context));
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
          }
        },
      ),
    );
  }
}
