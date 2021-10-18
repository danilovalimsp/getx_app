import 'package:flutter/material.dart';

class CustomLoading extends StatelessWidget {
  final bool isLoading;

  const CustomLoading({Key? key, required this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isLoading,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
