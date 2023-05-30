import 'package:flutter/material.dart';
import 'package:flutter_client/core/app_theme.dart';
import 'package:flutter_client/features/jobs/application/job_service.dart';
import 'package:flutter_client/features/jobs/data/job_repository.dart';
import 'package:flutter_client/features/jobs/presentation/views/job_view.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main(List<String> args) {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Dependency Injections
        Provider<JobRepository>(
          create: (context) => JobRepository(),
        ),
        ProxyProvider<JobRepository, JobService>(
          update: (_, jobRepo, __) => JobService(jobRepository: jobRepo),
        )
      ],
      child: MaterialApp(
        theme: appTheme,
        builder: (context, child) => ResponsiveBreakpoints.builder(
          child: child!,
          breakpoints: [
            const Breakpoint(start: 0, end: 800, name: MOBILE),
            const Breakpoint(start: 800, end: double.infinity, name: DESKTOP),
          ],
        ),
        home: const JobView(),
      ),
    );
  }
}
