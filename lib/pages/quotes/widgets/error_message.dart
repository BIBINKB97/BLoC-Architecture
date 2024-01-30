import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final String error;
  const ErrorMessage({super.key, required this.error});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.error,
          color: Colors.red,
          size: 40,
        ),
        SizedBox(
          height: 20,
          child: Text(error),
        )
      ],
    );
  }
}
