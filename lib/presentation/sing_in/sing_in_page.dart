import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_app/application/auth/sing_in_form/bloc/sing_in_form_bloc.dart';
import 'package:flutter_my_app/injection.dart';
import 'package:flutter_my_app/presentation/sing_in/widgets/sing_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sing In"),
      ),
      body: BlocProvider(
        create: (context) => getIt<SingInFormBloc>(),
        child: const SingInForm(),
      ),
    );
  }
}
