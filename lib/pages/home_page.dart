import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_app/bloc/books_bloc/books_bloc.dart';
import 'package:flutter_my_app/models/book_model.dart';
import 'package:flutter_my_app/pages/book_detail.dart';
import 'package:flutter_my_app/services/api_services.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late BooksBloc booksBloc;

  @override
  void initState() {
    booksBloc = BlocProvider.of<BooksBloc>(context);
    booksBloc.add(FetchBooks());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();
    final ApiServices apiServices = ApiServices();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: BlocBuilder<BooksBloc, BooksState>(
        builder: (_, state) {
          print(state);

          if (state is LoadingBooks) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is LoadedBooks || state is BooksWithBookDetail) {
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
                          // scrollDirection: Axis.vertical,
                          itemCount: state.books?.length,
                          itemBuilder: (_, int index) {
                            return Container(
                              width: 130,
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                                10, 0, 10, 0,),
                                        title: Text(
                                          state.books![index].title!,
                                          style: const TextStyle(
                                              fontFamily: "DINregular",
                                              fontSize: 22,),
                                        ),
                                        trailing: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            MaterialButton(
                                              onPressed: () async {
                                                final Book _book =
                                                    state.books![index];
                                                // booksBloc.add(FetchBookDetail(
                                                //     _book, context));

                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Center(
                                                            child: BookDetail(
                                                                book: _book,),),
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
                                                    color: Colors.white,),
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
                        apiServices.listOfBooks.clear();
                        booksBloc.add(FetchBooks());
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
