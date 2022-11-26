import 'package:flutter/material.dart';
import '../../utils/utils.dart';

class GoHomeBtn extends StatelessWidget {
  const GoHomeBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).popUntil((route) => route.isFirst);
      },
      child: Text(
        getStr('go_back_to_home'),
      ),
    );
  }
}
