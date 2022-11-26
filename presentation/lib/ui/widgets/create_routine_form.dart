import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:presentation/global_widgets/error_widget.dart';

import '../../global_widgets/loading_widget.dart';
import '../../utils/utils.dart';

final _createRoutineFormBlocProv =
    Provider.autoDispose(CreateRoutineFormCubit.new);
final _routineActionsListBlocProv =
    Provider.autoDispose(DeviceActionsListBlocCubit.new);

class CreateRoutineForm extends ConsumerWidget {
  static Future<void> showModal(BuildContext context) async {
    showCupertinoModalBottomSheet(
      context: context,
      builder: (context) {
        return const Scaffold(
          body: CreateRoutineForm(),
        );
      },
    );
  }

  const CreateRoutineForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ref.watch(_createRoutineFormBlocProv),
        ),
        BlocProvider(
          create: (_) => ref.watch(_routineActionsListBlocProv),
        ),
      ],
      child: const Scaffold(
        body: _CreateRoutineFormBody(),
        bottomNavigationBar: _CreateRoutineFormSubmitButton(),
      ),
    );
  }
}

class _CreateRoutineFormBody extends StatefulWidget {
  const _CreateRoutineFormBody();

  @override
  State<_CreateRoutineFormBody> createState() => _CreateRoutineFormBodyState();
}

class _CreateRoutineFormBodyState extends State<_CreateRoutineFormBody> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateRoutineFormCubit, CreateRoutineFormState>(
      builder: (context, state) {
        return SingleChildScrollView(
          child: Container(
            margin: defPadding,
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    getStr('home:routine_form:form_title'),
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: getStr('home:routine_form:routine_name'),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return getStr('home:routine_form:invalid_name');
                      }
                      return null;
                    },
                    onChanged: (value) {
                      context.read<CreateRoutineFormCubit>().setName(value);
                    },
                  ),
                  const _CreateRoutineFormActions(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _CreateRoutineFormActions extends ConsumerWidget {
  const _CreateRoutineFormActions();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocBuilder<DeviceActionsListBlocCubit, DeviceActionsListBlocState>(
      builder: (context, state) {
        return state.when(
          initial: SizedBox.new,
          loading: LoadingWidget.new,
          error: ErrWidget.error,
          loaded: (actions) {
            return BlocBuilder<CreateRoutineFormCubit, CreateRoutineFormState>(
                builder: (context, formState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: actions.map(
                  (e) {
                    return CheckboxListTile(
                      value: formState.actions?.contains(e) == true,
                      onChanged: (value) {
                        if (value == true) {
                          context.read<CreateRoutineFormCubit>().addAction(e);
                        } else {
                          context
                              .read<CreateRoutineFormCubit>()
                              .removeAction(e);
                        }
                      },
                      title: Text(e.actionName),
                    );
                  },
                ).toList(),
              );
            });
          },
        );
      },
    );
  }
}

class _CreateRoutineFormSubmitButton extends ConsumerWidget {
  const _CreateRoutineFormSubmitButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () async {
        final nav = Navigator.of(context);
        await context.read<CreateRoutineFormCubit>().createRoutine(context);
        nav.pop();
      },
      child: Text(
        getStr('home:routine_form:submit'),
      ),
    );
  }
}
