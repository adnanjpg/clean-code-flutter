import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/global_widgets/error_widget.dart';

import '../../global_widgets/loading_widget.dart';
import '../../utils/utils.dart';
import 'create_routine_form.dart';

class RoutinesList extends ConsumerWidget {
  const RoutinesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              getStr('home:routines_list'),
              style: Theme.of(context).textTheme.headline3,
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () async => await CreateRoutineForm.showModal(context),
            ),
          ],
        ),
        BlocBuilder<RoutinesListBlocCubit, RoutinesListBlocState>(
          builder: (context, state) {
            return state.when(
              initial: SizedBox.new,
              loading: LoadingWidget.new,
              error: ErrWidget.error,
              loaded: (routines) {
                if (routines.isEmpty) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          getStr('home:no_routines'),
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async =>
                            await CreateRoutineForm.showModal(context),
                        child: Text(
                          getStr('home:add_routine'),
                        ),
                      ),
                    ],
                  );
                }

                return Column(
                  children: routines.map(
                    (e) {
                      return Card(
                        child: ListTile(
                          title: Text(
                            e.name,
                          ),
                          subtitle: Text(
                            e.actionsStr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: SizedBox(
                            width: 100,
                            child: Row(
                              children: [
                                IconButton(
                                  icon: const Icon(Icons.edit),
                                  onPressed: () {},
                                ),
                                IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    context
                                        .read<RoutinesListBlocCubit>()
                                        .deleteRoutine(e);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ).toList(),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
