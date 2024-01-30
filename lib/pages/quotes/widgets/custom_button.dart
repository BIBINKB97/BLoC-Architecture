import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {},
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.purple),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 15),
            child: Text(
              "generate",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
