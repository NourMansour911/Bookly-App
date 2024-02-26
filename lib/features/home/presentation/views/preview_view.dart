import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/preview_body.dart';

class PreView extends StatelessWidget {
  const PreView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 48.0),
          child: const PreViewBody(),
        ),
      ),
    );
  }
}
