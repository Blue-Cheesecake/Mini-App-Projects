import 'package:flutter/material.dart';
import 'package:flutter_client/core/app_theme.dart';
import 'package:flutter_client/features/jobs/presentation/views/job_view.dart';

void main(List<String> args) {}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: const JobView(),
    );
  }
}
