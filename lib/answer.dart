import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(
    this.selectHandler, {
    super.key,
  });

  final VoidCallback selectHandler;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          const BoxShadow(
            color: Colors.white,
            blurRadius: 15,
            offset: Offset(-10, -10),
            spreadRadius: 1,
          ),
          BoxShadow(
            color: Colors.grey.shade500,
            blurRadius: 15,
            offset: const Offset(10, 10),
            spreadRadius: 1,
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 28,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          elevation: MaterialStateProperty.all(0),
        ),
        child: const Text('Answer 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
