import 'package:flutter/material.dart';
import 'package:presentation/ui/widgets/devices_list.dart';

import '../../utils/utils.dart';
import '../widgets/routines_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          margin: defPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DevicesList(),
              RoutinesList(),
            ],
          ),
        ),
      ),
    );
  }
}
