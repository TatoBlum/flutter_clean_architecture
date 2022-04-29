import 'package:flutter/material.dart';
import 'package:flutter_my_app/presentation/sing_in/sing_in_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return
    //  MultiBlocProvider(
    //   providers: [
    //     BlocProvider(create: (_) => BooksBloc(repository: ApiServices())),
    //   ],
    //  child:
       MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInPage(), //MyHomePage(title: "Home"),
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue[900],
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ), colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
        ),
  //    ),
    );
  }
}
