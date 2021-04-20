import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/auth/auth_bloc.dart';
import 'package:rankstaurant/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:rankstaurant/main.dart';
import 'package:rankstaurant/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidEmailOrPassword: (_) => 'Invalid email or password',
                  userNotFound: (_) => 'User not found',
                ),
              ).show(context);
              loadingOverlay.hide();
            },
            (_) {
              context.router.replace(const RestaurantsRoute());
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
              loadingOverlay.hide();
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      'Rankstaurant',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 32),
                TextFormField(
                  decoration: const InputDecoration(hintText: 'Email'),
                  autocorrect: false,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) =>
                              state.showErrorMessages ? 'Invalid Email' : null,
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                  ),
                  autocorrect: false,
                  obscureText: true,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .password
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          shortPassword: (_) =>
                              state.showErrorMessages ? 'Short Password' : null,
                          orElse: () => null,
                        ),
                        (_) => null,
                      ),
                ),
                const SizedBox(height: 8),
                DropdownButtonFormField(
                  items: const [
                    DropdownMenuItem(value: 'regular', child: Text('Consumer')),
                    DropdownMenuItem(value: 'owner', child: Text('Owner'))
                  ],
                  value: 'regular',
                  onChanged: (newValue) {
                    if (newValue is String) {
                      context
                          .read<SignInFormBloc>()
                          .add(SignInFormEvent.userRoleChanged(newValue));
                    }
                  },
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        loadingOverlay.show(context);
                        FocusScope.of(context).unfocus();
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .registerWithEmailAndPasswordPressed(),
                            );
                      },
                      child: const Text('SIGN UP'),
                    ),
                    TextButton(
                      onPressed: () {
                        loadingOverlay.show(context);
                        FocusScope.of(context).unfocus();
                        context.read<SignInFormBloc>().add(
                              const SignInFormEvent
                                  .signInWithEmailAndPasswordPressed(),
                            );
                      },
                      child: const Text('Sign In'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
