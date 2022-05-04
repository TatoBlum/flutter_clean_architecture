import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_my_app/application/auth/sing_in_form/bloc/sing_in_form_bloc.dart';
import 'package:flutter_my_app/presentation/books/home_page.dart';

class SingInForm extends StatelessWidget {
  const SingInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double defaultSizeBoxHeight = 8;
    final _size = MediaQuery.of(context).size;

    return BlocConsumer<SingInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) => {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailAndPasswordCombination: (_) =>
                      'Invalid email and password combination',
                ),
              ).show(context),
            },
            (r) => {},
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              width: _size.width * 0.85,
              height: _size.height * 0.40,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Form(
                autovalidateMode: state.showErrorMessages
                    ? AutovalidateMode.onUserInteraction
                    : AutovalidateMode.disabled,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const SizedBox(height: defaultSizeBoxHeight),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Email',
                      ),
                      autocorrect: false,
                      onChanged: (value) => context.read<SingInFormBloc>().add(
                            SingInFormEvent.emailChanged(value),
                          ),
                      validator: (_) => context
                          .watch<SingInFormBloc>()
                          .state
                          .emailAddress
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                    const SizedBox(height: defaultSizeBoxHeight),
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'Password',
                      ),
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (value) => context.read<SingInFormBloc>().add(
                            SingInFormEvent.passwordChanged(value),
                          ),
                      validator: (_) => context
                          .watch<SingInFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                            (l) => l.maybeMap(
                              shortPassword: (_) => 'Short Password',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                    const SizedBox(height: defaultSizeBoxHeight),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.read<SingInFormBloc>().add(
                                    const SingInFormEvent
                                        .singInWithEmailAndPasswordPressed(),
                                  );

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Center(
                                    child: MyHomePage(title: "Books"),
                                  ),
                                ),
                              );
                            },
                            child: const Text("Sing In"),
                          ),
                        ),
                        Expanded(
                          child: TextButton(
                            onPressed: () {
                              context.read<SingInFormBloc>().add(
                                    const SingInFormEvent
                                        .registerWithEmailAndPasswordPressed(),
                                  );
                            },
                            child: const Text("Register"),
                          ),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<SingInFormBloc>().add(
                              const SingInFormEvent.singInWithGooglePressed(),
                            );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlue,
                      ),
                      child: const Text(
                        "Sing in with Google",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
