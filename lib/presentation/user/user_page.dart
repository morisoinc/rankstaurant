import 'package:another_flushbar/flushbar_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rankstaurant/application/user_form/user_form_bloc.dart';
import 'package:rankstaurant/domain/user/user.dart';
import 'package:rankstaurant/global/colors.dart';
import 'package:rankstaurant/global/widgets/r_container.dart';
import 'package:rankstaurant/injection.dart';
import 'package:rankstaurant/main.dart';

class UserPage extends StatelessWidget {
  const UserPage({required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final textEditingController = TextEditingController();

    bool textEditingControllerInitialized = false;

    return BlocProvider(
      create: (context) => getIt<UserFormBloc>()
        ..add(UserFormEvent.initialized(
          optionOf(user),
        )),
      child: Scaffold(
        body: RContainer(
          headerTitle: 'Edit User',
          rightIcon: const Icon(
            Icons.delete,
            color: kRed,
            size: 18,
          ),
          rightAction: () {
            loadingOverlay.show(context);
            context
                .read<UserFormBloc>()
                .add(const UserFormEvent.deleteUserPressed());
          },
          body: BlocConsumer<UserFormBloc, UserFormState>(
            listener: (context, state) {
              if (!textEditingControllerInitialized) {
                textEditingController.text = state.user.email.getOrCrash();
                textEditingControllerInitialized = true;
              }
              state.userFailureOrSuccessOption.fold(
                  () {},
                  (either) => either.fold((failure) {
                        loadingOverlay.hide();
                        FlushbarHelper.createError(
                            message: failure.map(
                          unexpected: (_) => 'Unexpected error',
                        )).show(context);
                      }, (_) {
                        loadingOverlay.hide();
                        Navigator.pop(context);
                      }));
            },
            builder: (context, state) {
              return Form(
                autovalidateMode: AutovalidateMode.always,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: textEditingController,
                      decoration: const InputDecoration(hintText: 'Email'),
                      autocorrect: false,
                      onChanged: (value) => context
                          .read<UserFormBloc>()
                          .add(UserFormEvent.emailChanged(value)),
                      validator: (_) => context
                          .read<UserFormBloc>()
                          .state
                          .user
                          .email
                          .value
                          .fold(
                            (f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null,
                            ),
                            (_) => null,
                          ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField(
                      items: const [
                        DropdownMenuItem(
                            value: 'admin', child: Text('Administrator')),
                        DropdownMenuItem(
                            value: 'regular', child: Text('Consumer')),
                        DropdownMenuItem(value: 'owner', child: Text('Owner'))
                      ],
                      value: state.user.role.getOrCrash(),
                      onChanged: (newValue) {
                        if (newValue is String) {
                          context
                              .read<UserFormBloc>()
                              .add(UserFormEvent.roleChanged(newValue));
                        }
                      },
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        loadingOverlay.show(context);
                        FocusScope.of(context).unfocus();
                        context.read<UserFormBloc>().add(
                              const UserFormEvent.saveUserPressed(),
                            );
                      },
                      child: const Text('Save'),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
